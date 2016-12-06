<%@ Page Language="C#" AutoEventWireup="true" Inherits="WebApplication4.CreateUser" CodeFile="CreateUser.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Coming soon, Bootstrap, Bootstrap 3.0, Free Coming Soon, free coming soon, free template, coming soon template, Html template, html template, html5, Code lab, codelab, codelab coming soon template, bootstrap coming soon template">
    <title>AD tool</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">AD WEB management tool</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                 <ul class="nav navbar-nav navbar-right">
                    <li><a href="CreateUser.aspx">User Management</a> </li>
                    <li><a href="/products">Permissions Management</a> </li>
                    <li><a href="/about-us">OU Management</a> </li>
                    <li><a href="/FolderPermissions.aspx">Folder Permissions</a> </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
           <div id="banner">
                   <h1>
                    Environmentally <strong>Safe</strong> drilling fluids and lubricants</h1>
                <h5>
                    <strong> </strong></h5>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>User Management<i class="fa fa-pencil pull-right"></i></legend>
                          <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Full Name" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="FullName" runat="server" placeholder="Full Name" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="User Name" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="Username" runat="server" placeholder="UserID" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="Password" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                          <asp:Label ID="Label3" runat="server" Text="Country" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                                <asp:DropDownList ID="Country" runat="server" CssClass="form-control ddl">
                                    <asp:ListItem Value="">Select Country</asp:ListItem>
                                    <asp:ListItem>Thailand</asp:ListItem>
                                    <asp:ListItem>Singapore</asp:ListItem>
                                    <asp:ListItem>USA</asp:ListItem>
                                </asp:DropDownList>                              
                            </div>
                        </div>
                         <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Site" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                                <asp:DropDownList ID="Site" runat="server" CssClass="form-control ddl">
                                    <asp:ListItem Value="">Select Site</asp:ListItem>
                                    <asp:ListItem>BAN</asp:ListItem>
                                    <asp:ListItem>AMN</asp:ListItem>
                                    <asp:ListItem>TOR</asp:ListItem>
                                </asp:DropDownList>                              
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="Email" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Phone" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="Phone" runat="server" placeholder="Phone" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Create User" OnClick="btnSubmit_Click" />
                                <asp:Button ID="btnRemove" runat="server" CssClass="btn btn-primary" Text="Delete User" OnClick="btnRemove_Click" />
                                  <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" />                              
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';

        /* ========================== */
        /* ::::::: Backstrech ::::::: */
        /* ========================== */
        // You may also attach Backstretch to a block-level element
        $.backstretch(
        [


            "img/34.jpg",

        ],

        {
            duration: 4500,
            fade: 1500
        }
    );
    </script>
    </form>
</body>
</html>
