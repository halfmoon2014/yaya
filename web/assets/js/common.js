(function(){  
                  
    //自己的命名空间，外部无法访问。  
    //定义了自己的函数$()  
    function webinit(call)  
    {
        var hk = CookieUtil.get("__hk");        
        var method = "webinit";
        $.ajax({
            type: "POST",
            async: true,
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            url: "mainHandler.ashx",
            data: { method: method, hk: hk },
            success: function (result) {
                call(JSON.parse(result));
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                call(textStatus);
            }
        }); //ajax end
        
    }  
    //构造自己的命名空间。  
    window['comn']={}  
    //将自己的命名空间注册到window，并且注册自己的$函数。  
    window['comn']['webinit'] = webinit;
})();


var CookieUtil = {
    // 设置cookie
    set: function (name, value, expires, domain, path, secure) {
        var cookieText = "";
        cookieText += encodeURIComponent(name) + "=" + encodeURIComponent(value);
        if (expires instanceof Date) {
            cookieText += "; expires=" + expires.toGMTString();
        }
        if (path) {
            cookieText += "; path=" + path;
        }
        if (domain) {
            cookieText += "; domain=" + domain;
        }
        if (secure) {
            cookieText += "; secure";
        }
        document.cookie = cookieText;
    },
    // name=value; expires=expiration_time; path=domain_path; domain=domain_name; secure
    // 获取cookie
    get: function (name) {
        var cookieName = encodeURIComponent(name) + "=",
            cookieStart = document.cookie.indexOf(cookieName),
            cookieValue = "";
        if (cookieStart > -1) {
            var cookieEnd = document.cookie.indexOf(";", cookieStart);
            if (cookieEnd == -1) {
                cookieEnd = document.cookie.length;
            }
            cookieValue = decodeURIComponent(document.cookie.substring(cookieStart + cookieName.length, cookieEnd));
        }
        return cookieValue;
    },
    // 删除cookie
    unset: function (name, domain, path, secure) {
        this.set(name, "", Date(0), domain, path, secure);
    }
};