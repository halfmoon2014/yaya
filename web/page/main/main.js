

require.config({
    paths: {
        "jquery": "../../../assets/js/jquery/1.12.4/jquery.min",
        "common": "../../../assets/js/page/common"
    }
})

require(["jquery", "common"], function ($, common) { 
    common.getFullName(function (result) {
        if (typeof result == "object") {//
            if (result.Errcode > 0) {
                alert(result.Errmsg)
            } else {
                $("[fill='fullname']").html(result.Data.fullname);
            }

        } else if (typeof result == "string") {//有错误
            alert(result);
        }
    });
    $("[fill='exit']").click(function () {
        alert(1);
    });
    console.log("当js加载成功后会执行的函数");
  
}, function () {
    console.log("当js加载失败后会执行的函数");
});

////注销
//function exit() {
//    //todo
//    //删掉cookie,返回登陆或退出
//}
//$(document).ready(function () {
//    comn.getFullName(function (result) {
//        if (typeof result == "object") {//
//            if (result.Errcode > 0) {
//                alert(result.Errmsg)
//            } else {
//                $("[fill='fullname']").html(result.Data.fullname);
//            }

//        } else if (typeof result == "string") {//有错误
//            alert(result);
//        }
//    });
//});