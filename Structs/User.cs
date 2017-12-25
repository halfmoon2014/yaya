using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Structs
{
    public class User
    {
        private String id;
        private String name;
        private String password;
        private String fullName;
        private String modifier;
        private String verifier;
        private Boolean isDisabled;
        private String remark;
        private DateTime createDate;
        private String createorId;

        public string Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public string FullName
        {
            get
            {
                return fullName;
            }

            set
            {
                fullName = value;
            }
        }

        public string Modifier
        {
            get
            {
                return modifier;
            }

            set
            {
                modifier = value;
            }
        }

        public string Verifier
        {
            get
            {
                return verifier;
            }

            set
            {
                verifier = value;
            }
        }

        public bool IsDisabled
        {
            get
            {
                return isDisabled;
            }

            set
            {
                isDisabled = value;
            }
        }

        public string Remark
        {
            get
            {
                return remark;
            }

            set
            {
                remark = value;
            }
        }

        public DateTime CreateDate
        {
            get
            {
                return createDate;
            }

            set
            {
                createDate = value;
            }
        }

        public string CreateorId
        {
            get
            {
                return createorId;
            }

            set
            {
                createorId = value;
            }
        }
    }
}
