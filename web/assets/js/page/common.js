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
    console.log(JSON);
    var getFullName = function (call) {
        var hk = utils.getCookie("__hk");
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
    };

    return {
        getFullName: getFullName
    };

});
