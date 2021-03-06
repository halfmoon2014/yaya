﻿require.config({
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
    //var getFullName = function (call) {
    //    var hk = utils.getCookie("__hk");
    //    var method = "webinit";
    //    $.ajax({
    //        type: "POST",
    //        async: true,
    //        contentType: "application/x-www-form-urlencoded; charset=utf-8",
    //        url: "../../service/handler/mainHandler.ashx",
    //        data: { method: method, hk: hk },
    //        success: function (result) {
    //            if (typeof call == "function") {
    //                call(JSON.parse(result));
    //            }
    //        },
    //        error: function (XMLHttpRequest, textStatus, errorThrown) {
    //            if (typeof call == "function") {
    //                call(textStatus);
    //            }
    //        }
    //    }); //ajax end
    //};
    var pageInit = function (call) {
        showLoading();
        //getFullName(addFooterNavbar);
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
        $(overlay).fadeOut(2000, function () {
            body[0].removeChild(overlay);
        });
    }
    return {
        pageInit: pageInit,
        showLoading: showLoading,
        hideLoading: hideLoading
    };

});
