<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="page_main" %>
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

      <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"></a>
            </div>
            <div  id="navbar"  class="navbar-collapse collapse">     
                
<ul class="nav navbar-nav ">
<li><a href="#" accesskey="s" onclick="go()" >未登陆</a></li>
<li><a href="#" fill="exit">注销</a></li>            
</ul>

 
                
            </div><!--/.nav-collapse -->
        </div>
    </nav>
    

    <script src="../assets/js/jquery/1.12.4/jquery.min.js"></script>    
    <script src="../bootstrap/3.3.7/js/bootstrap.min.js"></script>    
    <script src="../assets/js/ie10-viewport-bug-workaround.js"></script>      
    <script data-main="../assets/js/main/main"  src="../assets/js/require.js" defer async="true"></script>    
  </body>    
</html>
<script type="text/javascript">
    function go() {
        alert(1)
    }

</script>