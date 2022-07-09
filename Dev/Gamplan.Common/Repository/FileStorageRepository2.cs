using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Gameplan.Common.Repository
{
    public class FileStorageRepository
    {
        private static String AVATAR_FOLDER = "/Images/Avatars";

        public void SaveAvatarImage(Guid userID, string base64Image)
        {
            if (base64Image == null)
                return;

            string avatarFolder = System.Web.HttpContext.Current.Server.MapPath("~/App_Data") + AVATAR_FOLDER;
            if (!Directory.Exists(avatarFolder))
            {
                Directory.CreateDirectory(avatarFolder);
            }
           
            string fileName =  userID.ToString() + ".txt";
            string imageFilePath = Path.Combine(avatarFolder, fileName);

            try
            {
                File.WriteAllText(imageFilePath, base64Image);
            }
            catch
            {
            }
        }

        public String GetAvatarBase64Data(Guid userID)
        {
            string avatarFolder = System.Web.HttpContext.Current.Server.MapPath("~/App_Data") + AVATAR_FOLDER;
            string imageFilePath = Path.Combine(avatarFolder, userID.ToString() + ".txt");
            try
            {
                string base64 = File.ReadAllText(imageFilePath);
                return base64;
            }
            catch
            {
                return "";
            }
        }
    }
}
