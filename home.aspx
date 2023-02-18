<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Book_webApplication.WebForm1" %>

<!DOCTYPE html>

<html dir="rtl" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
    <meta charset ="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scal" />
    <meta name="description" content="home" />
    <meta name="author" content="Shamim" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
	
<body>
            <form id="form1" runat="server">
            <!-- navbar -->

	<nav class="navbar navbar-expand-sm bg-light">
	  <div class="container-fluid">
		<ul class="navbar-nav">
		  <li class="nav-item">
			  <asp:HyperLink id="hyperlink1" class="nav-link" NavigateUrl="prof.aspx" Text="کتاب های من" runat="server"/> 
		  </li>
		  <li class="nav-item">
			  	<asp:HyperLink id="hyperlink2" class="nav-link" NavigateUrl="#" Text="تاریخچه" runat="server" OnClick="history"/> 
		  </li>
		  <li class="nav-item">
			  <asp:HyperLink id="hyperlink3" class="nav-link" NavigateUrl="factor.aspx" Text="سبد خرید" runat="server" OnClick="history"/> 
		  </li>
			 <li class="nav-item">
			  <asp:HyperLink id="hyperlink5" class="nav-link" NavigateUrl="prof.aspx" Text="پروفایل من" runat="server" OnClick="history"/> 
		  </li>
			</li>
			 <li class="nav-item">
			  <asp:HyperLink id="hyperlink6" class="nav-link" NavigateUrl="login.aspx" Text="خروح" runat="server" OnClick="history"/> 
		  </li>
		</ul>
	  </div>
	</nav>

<!-- محصولات -->

	<div class="row">
		<div class="col-md-12">
			<h2>کتاب ها</h2>
			<asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover"></asp:GridView>
		</div>
	</div>                           		
            </form>
    </body>
</html>
