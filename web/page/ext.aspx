<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ext.aspx.cs" Inherits="page_ext" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>客户档案</title>


    <link href="../../bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="../../assets/css/ext/sticky-footer-navbar.css" rel="stylesheet" />
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!--[if lt IE 9]>
        <script src="../../html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="../../respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="../../assets/css/loading/loading.css" rel="stylesheet" />
    <style type="text/css">
        .input-group-addon-customer {
            background-color: transparent;
            border-width: 0px;
        }
    </style>
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
        
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span id="fullname" name="fullname"  runat="server">未登陆</span></a></li>
            <li><a href="javascript:window.opener=null;window.open('','_self');window.close();" fill="exit">关闭</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container" id="container" name="container" runat="server">


    </div>
    <footer class="footer">  
        <div class="container">   
            <p class="text-muted">Place sticky footer content here.</p>  
        </div>
    </footer>
    <script src="../../assets/js/jquery/1.12.4/jquery.min.js"></script>
    <script src="../../bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <script data-main="../../assets/js/ext/ext" src="../../assets/js/require.js" defer async="true"></script>
</body>
</html>
