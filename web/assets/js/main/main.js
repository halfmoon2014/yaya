require.config({
    paths: {
        "jquery": "../../../assets/js/jquery/1.12.4/jquery.min",
        "common": "../../../assets/js/page/common"
    }
})

require(["jquery", "common"], function ($, common) {  
    $("[fill='exit']").click(function () {
        //alert(1);
    });
    //console.log("当js加载成功后会执行的函数");
  
}, function () {
    //console.log("当js加载失败后会执行的函数");
});

