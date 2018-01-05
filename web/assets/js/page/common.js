require.config({
    paths: {
        "jquery": "../../../assets/js/jquery/1.12.4/jquery.min",
        "utils": "../../../assets/js/utils",
        "json2": "../../../assets/js/json2"
    },
    shim: {
        json2: {
            exports: 'JSON2'
        },
    }
})
define(['jquery', 'json2', 'utils'], function ($, JSON, utils) {
    var getFullName = function (call) {
        var hk = utils.getCookie("__hk");
        var method = "webinit";
        $.ajax({
            type: "POST",
            async: true,
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            url: "../../service/mainHandler.ashx",
            data: { method: method, hk: hk },
            success: function (result) {
                if (typeof call == "function") {
                    call(JSON.parse(result));
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                if (typeof call == "function") {
                    call(textStatus);
                }
            }
        }); //ajax end
    };
    var pageInit = function (call) {
        showLoading();
        getFullName(addFooterNavbar)        
        
    }
    //增加顶部导航和低部注脚
    var addFooterNavbar = function (result) {
        var fullname = "";
        if (typeof result == "object") {
            if (result.Errcode > 0) {
                fullname = result.Errmsg;
            } else {
                fullname=result.Data.fullname;
            }

        } else if (typeof result == "string") {//有错误
            fullname=result;
        }

        var css = "";
        css += "<style type=\"text/css\">";
        css += "html {";
        css += "  position: relative;";
        css += "  min-height: 100%;";
        css += "}";
        css += "body { ";
        css += "  margin-bottom: 60px;";
        css += "}";
        css += ".footer {";
        css += "  position: absolute;";
        css += "  bottom: 0;";
        css += "  width: 100%;";
        css += "  height: 60px;";
        css += "  background-color: #f5f5f5;";
        css += "}";

        css += "body > .container {";
        css += "  padding: 60px 15px 0;";
        css += "}";
        css += ".container .text-muted {";
        css += "  margin: 20px 0;";
        css += "}";

        css += ".footer > .container {";
        css += "  padding-right: 15px;";
        css += "  padding-left: 15px;";
        css += "}";
        css += "</style>";

        var fixedNavbar = "";
        fixedNavbar += "<nav class=\"navbar navbar-default navbar-fixed-top\">";
        fixedNavbar += "  <div class=\"container\">";
        fixedNavbar += "   <div class=\"navbar-header\">";
        fixedNavbar += "    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">";
        fixedNavbar += "     <span class=\"sr-only\">Toggle navigation</span>";
        fixedNavbar += "     <span class=\"icon-bar\"></span>";
        fixedNavbar += "     <span class=\"icon-bar\"></span>";
        fixedNavbar += "     <span class=\"icon-bar\"></span>";
        fixedNavbar += "    </button>";
        fixedNavbar += "    <a class=\"navbar-brand\" href=\"#\">Project name</a>";
        fixedNavbar += "   </div>";
        fixedNavbar += "   <div id=\"navbar\" class=\"collapse navbar-collapse\">";
        fixedNavbar += "    <ul class=\"nav navbar-nav navbar-right\">";
        fixedNavbar += "     <li><a href=\"#\" fill=\"fullname\">" + fullname + "</a></li>";
        fixedNavbar += "     <li><a href=\"javascript:window.opener=null;window.open('','_self');window.close();\" >关闭</a></li>";
        fixedNavbar += "    </ul>";
        fixedNavbar += "   </div>";
        fixedNavbar += "  </div>";
        fixedNavbar += "</nav>";

        var footer = "";
        footer += "<footer class=\"footer\">";
        footer += "  <div class=\"container\">";
        footer += "   <p class=\"text-muted\">Place sticky footer content here.</p>";
        footer += "  </div>";
        footer += "</footer>";
        $("body").prepend(css);
        $("body").prepend(fixedNavbar);
        $("body").append(footer);
        hideLoading();
    }
    
    //显示遮罩
    var showLoading = function () {
        var spinner = document.createElement("div"); //首先创建一个div
        spinner.className = "sk-cube-grid";
        var rect1 = document.createElement("div"); //首先创建一个div    
        rect1.className = "sk-cube sk-cube1";
        var rect2 = document.createElement("div"); //首先创建一个div        
        rect2.className = "sk-cube sk-cube2";
        var rect3 = document.createElement("div"); //首先创建一个div
        rect3.className = "sk-cube sk-cube3";
        var rect4 = document.createElement("div"); //首先创建一个div
        rect4.className = "sk-cube sk-cube4";
        var rect5 = document.createElement("div"); //首先创建一个div
        rect5.className = "sk-cube sk-cube5";
        var rect6 = document.createElement("div"); //首先创建一个div
        rect6.className = "sk-cube sk-cube6";
        var rect7 = document.createElement("div"); //首先创建一个div
        rect7.className = "sk-cube sk-cube7";
        var rect8 = document.createElement("div"); //首先创建一个div
        rect8.className = "sk-cube sk-cube8";
        var rect9 = document.createElement("div"); //首先创建一个div
        rect9.className = "sk-cube sk-cube9";
        spinner.appendChild(rect1)
        spinner.appendChild(rect2)
        spinner.appendChild(rect3)
        spinner.appendChild(rect4)
        spinner.appendChild(rect5)
        spinner.appendChild(rect6)
        spinner.appendChild(rect7)
        spinner.appendChild(rect8)
        spinner.appendChild(rect9)
        var overlayHTML = document.createElement("div"); //首先创建一个div        
        overlayHTML.setAttribute("id", "overlay"); //定义该div的id
        overlayHTML.style.background = "#dedede";
        overlayHTML.style.width = "100%";
        overlayHTML.style.height = "100%";
        overlayHTML.style.position = "fixed";
        overlayHTML.style.top = "0";
        overlayHTML.style.left = "0";
        overlayHTML.style.zIndex = "99999";
        overlayHTML.style.opacity = "1";
        overlayHTML.style.filter = "Alpha(opacity=70)";
        overlayHTML.appendChild(spinner);
        document.body.appendChild(overlayHTML);
    }
    //取消遮罩
    var hideLoading = function () {
        var body = document.getElementsByTagName("body");
        var overlay = document.getElementById("overlay");
        $(overlay).fadeOut(2000,function () {
            body[0].removeChild(overlay);
        });        
    }
    return {
        getFullName: getFullName,
        pageInit: pageInit,
        showLoading: showLoading,
        hideLoading: hideLoading
    };

});
