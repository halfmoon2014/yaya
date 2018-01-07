<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="page_main" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../favicon.ico">
    <title>首页</title>
     
    <link href="../bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" /> 
         
    <link href="../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">    
    <link href="../assets/css/main/navbar-fixed-top.css" rel="stylesheet" />
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>    
    <!--[if lt IE 9]>      
        <script src="../html5shiv/3.7.3/html5shiv.min.js"></script>      
        <script src="../respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">首页</a></li>
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">生产模块 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li><a href="#">挂镀车间</a></li>
                      <li><a href="#">滚镀车间</a></li>                      
                  </ul>
              </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">财务模块 <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">客户期初</a></li>
                <li><a href="#">供应商期初</a></li>
                <li><a href="#">应收款账</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">报表</li>
                <li><a href="#">应收款月报表</a></li>
                <li><a href="#">账款查询</a></li>
              </ul>
            </li>
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">基础档案 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li><a href="../page/ext/customer" target="_blank">客户档案</a></li>
                      <li><a href="#">供应商档案</a></li>
                      <li><a href="#">产品型号</a></li>                      
                      <li><a href="#">颜色库</a></li>                      
                      <li><a href="#">工艺库</a></li>     
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">系统设置 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li><a href="#">用户设置</a></li>
                      <li><a href="#">权限设置</a></li>                      
                  </ul>
              </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span id="fullname" name="fullname"  runat="server">未登陆</span></a></li>
            <li><a href="#" fill="exit">注销</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron" id="container">
      
      </div>

    </div> <!-- /container -->
    

    <script src="../assets/js/jquery/1.12.4/jquery.min.js"></script>    
    <script src="../bootstrap/3.3.7/js/bootstrap.min.js"></script>    
    <script src="../assets/js/ie10-viewport-bug-workaround.js"></script>      
    <script data-main="../assets/js/main/main"  src="../assets/js/require.js" defer async="true"></script>    
  </body>
</html>