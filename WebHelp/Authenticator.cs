using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Structs;
using Utils;

namespace WebHelp
{
    /// <summary>
    /// 验证器
    /// </summary>
    public class Authenticator
    {        
        public static String  Login(User user)
        {
            Certification certifier = Certification.GetInstance();
            string value = Secret.DESEncrypt(user.Id + Time.GetTimeStamp(DateTime.Now));
            if (Certification.Certifier.ContainsKey(user.Id))
            {
                Certification.Certifier.Remove(user.Id);
            }
            Certification.Certifier.Add(user.Id, value);
            return value;
        }
        
    }
}
