using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebHelp
{
    /// <summary>
    /// 用户身份证明
    /// </summary>
    public  class Certification
    {
        private static Certification instance ;
        private static object _lock = new object();
        private static Dictionary<string, string> certifier = new Dictionary<string, string>();

        public static Dictionary<string, string> Certifier
        {
            get
            {
                return certifier;
            }

            set
            {
                certifier = value;
            }
        }

        Certification()
        {
        }
        public static Certification GetInstance()
        {
            if (instance == null)
            {
                lock (_lock)
                {
                    if (instance == null)
                    {
                        instance = new Certification();
                    }
                }
            }
            return instance;
        }

    }     
}
