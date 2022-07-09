using System;
using System.Diagnostics;
using System.Security.Principal;
using System.Threading;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Logging;

namespace GamePlan.Business
{
    // TODO: need to reattempt merge of vbod's version of this file
    public static class LoggingHandler
    {
        #region Private Fields

        #endregion

        #region Constructors

        static LoggingHandler()
        {
        }

        #endregion

        #region Properties

        public static WindowsIdentity ThreadIdentity
        {
            get
            {
                WindowsIdentity threadIdentity = Thread.CurrentPrincipal.Identity as WindowsIdentity;

                if (threadIdentity == null)
                {
                    threadIdentity = WindowsIdentity.GetCurrent(true);
                    if (threadIdentity == null)
                    {
                        threadIdentity = ProcessIdentity;
                    }
                }

                return threadIdentity;
            }
        }

        public static WindowsIdentity ProcessIdentity
        {
            get
            {
                return WindowsIdentity.GetCurrent(false);
            }
        }

        #endregion

        #region Static Methods

        public static LogEntry CreateLogEntry(string title, string message)
        {
            return CreateLogEntry(LoggingSection.Instance.ApplicationName, title, message);
        }

        public static LogEntry CreateLogEntry(string applicationName, string title, string message)
        {
            LogEntry logEntry = new LogEntry();
            logEntry.Categories.Add("General");
            logEntry.ProcessName = Process.GetCurrentProcess().ProcessName;
            logEntry.Title = title;
            logEntry.ProcessId = Process.GetCurrentProcess().Id.ToString();
            logEntry.Message = message;
            int eventId = NewEventID();
            logEntry.EventId = eventId;
            AddExtendedProperties(logEntry, applicationName);

            return logEntry;
        }

        public static LogEntry LogMessage(string title, string message)
        {
            return LogMessage(LoggingSection.Instance.ApplicationName, title, message);
        }

        public static LogEntry LogMessage(string applicationName, string title, string message)
        {
            LogEntry logEntry = CreateLogEntry(applicationName, title, message);
            logEntry.Severity = TraceEventType.Information;
            Trace.TraceInformation("{0} : {1} : {2}", applicationName, title, message);

            Write(logEntry);

            return logEntry;
        }

        public static void LogAndThrow(this Exception exception)
        {            
            ApplicationException applicationException = new ApplicationException("An exception occurred and will be logged", exception);
            LogError(applicationException, exception.Message);
            throw applicationException;
        }

        public static LogEntry LogError(this Exception exception, string title)
        {
            return LogError(exception, LoggingSection.Instance.ApplicationName, title);
        }

        public static LogEntry LogError(this Exception exception)
        {
            return LogError(exception, LoggingSection.Instance.ApplicationName, exception.Message);
        }

        public static LogEntry LogError(this Exception exception, string applicationName, string title)
        {
            if (exception == null)
            {
                throw new ArgumentNullException("exception");
            }

            LogEntry logEntry = CreateLogEntry(applicationName, title, null);
            logEntry.Severity = TraceEventType.Error;
            logEntry.Message = exception.ToString();
            Trace.TraceError("{0} : {1} : {2}", applicationName, title, exception.Message);

            Write(logEntry);

            return logEntry;
        }

        public static void Write(this LogEntry logEntry)
        {
            if (logEntry == null)
            {
                throw new ArgumentNullException("logEntry");
            }

            try
            {
                Logger.Write(logEntry);
            }
            catch (Exception loggingException)
            {
                throw new ApplicationException(String.Format("An error occured while attempting to log the following entry: {0}.\nThe entry was not logged due to the following logging error: {1}.", logEntry.Title, loggingException.Message), loggingException);
            }
        }

        public static LogEntry AddExtendedProperties(this LogEntry logEntry, string applicationName)
        {
            if (logEntry == null)
            {
                throw new ArgumentNullException("logEntry");
            }

            logEntry.ExtendedProperties.Add("Application Name", applicationName);
            logEntry.ExtendedProperties.Add("Thread User Name", ThreadIdentity.Name);
            logEntry.ExtendedProperties.Add("Process User Name", ProcessIdentity.Name);

            return logEntry;
        }        

        #endregion

        #region Helper Methods

        private static ushort NewEventID()
        {
            Random random = new Random(Guid.NewGuid().GetHashCode());
            return (ushort)random.Next(0, ushort.MaxValue);
        }

        #endregion
    }
}
