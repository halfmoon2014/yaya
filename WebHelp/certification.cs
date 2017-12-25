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
        private static Dictionary<string, object> certifier = new Dictionary<string, object>();

        public static Dictionary<string, object> Certifier
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
