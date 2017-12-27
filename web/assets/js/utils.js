define(function () {
    // 设置cookie
    var setCookie = function (name, value, expires, domain, path, secure) {
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
    };
    // name=value; expires=expiration_time; path=domain_path; domain=domain_name; secure
    // 获取cookie
    var getCookie = function (name) {
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
    };
    // 删除cookie
    var unsetCookie = function (name, domain, path, secure) {
        this.set(name, "", Date(0), domain, path, secure);
    }

    return {
        setCookie: setCookie,
        getCookie: getCookie,
        unsetCookie, unsetCookie
    };

});

