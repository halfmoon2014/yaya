using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Structs
{
    public class MessageContentStc<T>
    {

        // 错误代码
        public int Errcode { get; set; }

        // 错误信息
        public string Errmsg { get; set; }

        // 消息内容
        public T Data { get; set; }


    }
}
