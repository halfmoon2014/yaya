<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="page_customer" %>

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

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="sticky-footer-navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

        <script src="../../html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="../../respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="../../assets/css/loading/loading.css" rel="stylesheet" />
    <style type="text/css">
        .input-group-addon-customer{
            background-color:transparent;border-width:0px;
        }
    </style>
</head>

<body>
    <div class="container">

        <div class="panel panel-default">
            <div class="panel-body">              
                <div class="row">
                    <div class="col-xs-12 col-sm-4 ">
                        <div class="input-group">
                            <span class="input-group-addon input-group-addon-customer" id="basic-addon-number">客户编号</span>
                            <input type="text" class="form-control" id="number"  aria-describedby="basic-addon-number">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 ">
                        <div class="input-group">
                            <span class="input-group-addon input-group-addon-customer" id="basic-addon-name">客户名称</span>
                            <input type="text" class="form-control" id="name" aria-describedby="basic-addon-name">
                        </div>
                    </div>
                    <div class="col-xs-12  col-sm-2 " style="text-align:right">
                        <span >
                            <button type="submit" class="btn btn-default">查询</button>
                        </span>
                    </div>
                </div>


            </div>
        </div>

        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                    </tr>
                </thead>
                <tbody>
          
                    <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
              
                </tbody>
            </table>
        </div>

    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../assets/js/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>

    <script src="../../bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
    <script data-main="customer" src="../../assets/js/require.js" defer async="true"></script>
</body>
</html>
