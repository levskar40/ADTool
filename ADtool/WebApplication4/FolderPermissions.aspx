<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FolderPermissions.aspx.cs" Inherits="WebApplication4.FolderPermissions" %>

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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script type="text/javascript">
        function SearchEmployees(txtSearch, CheckBoxList) {
            if ($(txtSearch).val() != "") {
                var count = 0;
                $(CheckBoxList).children('tbody').children('tr').children('td').each(function () {
                    var match = false;
                    $(this).children('label').each(function () {
                        if ($(this).text().toUpperCase().indexOf($(txtSearch).val().toUpperCase()) > -1)
                            match = true;
                    });
                    if (match) {
                        $(this).show();
                        count++;
                    }
                    else { $(this).hide(); }
                });
                $('#spnCount').html((count) + ' match');
            }
            else {
                $(CheckBoxList).children('tbody').children('tr').each(function () {
                    $(this).show();
                });
                $('#spnCount').html('');
            }
        }
    </script>

   <script type="text/javascript">
       function ValidateCheckBoxList(source, args)
    {
  var chkListModules= document.getElementById ('<%= CheckBoxList.ClientID %>');
  var chkListinputs = chkListModules.getElementsByTagName("input");
  for (var i=0;i<chkListinputs .length;i++)
    {
    if (chkListinputs [i].checked)
    {
      args.IsValid = true;
      return;
    }
  }
  args.IsValid = false;
    }
   </script>

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
                        <legend>Folder Permissions<i class="fa fa-pencil pull-right"></i></legend>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Server" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:DropDownList ID="ServerName" placeholder="Select Server" runat="server" CssClass="form-control ddl" ValidateRequestMode="Enabled">
                                    <asp:ListItem Value="">Select Server</asp:ListItem>
                                    <asp:ListItem>VARN-006</asp:ListItem>
                                    <asp:ListItem>BGDEVNFS01</asp:ListItem>
                                </asp:DropDownList>    
                                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="ServerName" ErrorMessage="Enter Server Name" ForeColor="Red" ValidationGroup="Server"></asp:RequiredFieldValidator>   
                            </div>
                        </div>
                        <div class="form-group">
                           


                        </div>
                        <div class="form-group">
                         <asp:Label ID="Label3" runat="server" Text="Folders" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                            <asp:TextBox ID="txtSearch" runat="server" onkeyup="SearchEmployees(this,'#CheckBoxList');" placeholder="Search folders" CssClass="form-control" Width="130px"></asp:TextBox>       
                                 </div>
                                <div class="col-lg-10 col-lg-offset-2">
                            <asp:CustomValidator runat="server" ID="CustomValidator1" ClientValidationFunction="ValidateCheckBoxList" ErrorMessage="Select atleast one folder" ForeColor="Red" ></asp:CustomValidator>  
                              </div>
                             <div style="OVERFLOW-Y:scroll; WIDTH:500px; HEIGHT:130px">
                            <div class="col-lg-10">
                                <asp:CheckBoxList ID="CheckBoxList" runat="server" RepeatColumns="2" CssClass="form-control"></asp:CheckBoxList>
                          
                            </div>
                                    </div>
                        </div>
                        <div class="form-group">
                            
                                <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Generate Folders" OnClick="Button1_Click" ValidationGroup="Server" />
                                   </div>
                           </div>
                        <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Account(s)" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                               <asp:TextBox ID="Account" runat="server" placeholder="Enter Accout(s)" CssClass="form-control"></asp:TextBox>          
                            <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="Account" ErrorMessage="Enter account(s)" ForeColor="Red">
                            </asp:RequiredFieldValidator> 
                            </div>
                        </div>
                             <div class="form-group">
                              <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="col-lg-2 control-label"></asp:Label>
                         <div class="col-lg-10">
                                <div class="radio">
                                    <label>
                                        <asp:RadioButtonList ID="Access" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
                                            <asp:ListItem Selected="True">FULL</asp:ListItem>
                                            <asp:ListItem>READ</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </label>
                                </div>
                            </div>
                               </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" Text="Add" OnClick="btnAdd_Click" />
                                <asp:Button ID="btnRemove" runat="server" CssClass="btn btn-primary" Text="Remove" OnClick="btnRemove_Click" />
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
