using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Structs;
using Utils;
using System.Text.RegularExpressions;

namespace WebHelp
{
    /// <summary>
    /// 验证器
    /// </summary>
    public class Authenticator
    {
        public static string separator = "&&";
        public static String  Login(User user)
        {
            Certification certifier = Certification.GetInstance();
            string value = Secret.DESEncrypt(user.Id + separator + Time.GetTimeStamp(DateTime.Now));
            if (Certification.Certifier.ContainsKey(user.Id))
            {
                Certification.Certifier.Remove(user.Id);
            }
            Certification.Certifier.Add(user.Id, user);
            return value;
        }
        public static User GetUser(string cer)
        {
            string val = Secret.DESDecrypt(cer);

            string[] sArray = Regex.Split(val, separator, RegexOptions.IgnoreCase);
            string userId = sArray[0];
            if (Certification.Certifier.ContainsKey(userId))
            {
                return (User)Certification.Certifier[userId];
            }
            else
            {
                return null;
            }

        }
        
    }
}
