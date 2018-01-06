require.config({
    paths: {
        "jquery": "../../../assets/js/jquery/1.12.4/jquery.min",
        "utils": "../../../assets/js/utils"
    }
})

require(["jquery", "utils"], function ($, utils) {

    if (utils.getCookie("__rememberMe") == "remember-me") {
        $("input:checkbox[value='remember-me']").attr('checked', 'true');
    }
    
    if (utils.getCookie("__name").length>0) {
        $("#inputName").val(utils.getCookie("__name"));
        $("#inputPassword").focus();
    }

    //console.log("当js加载成功后会执行的函数");

}, function () {
    //console.log("当js加载失败后会执行的函数");
});

