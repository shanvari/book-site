<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prof.aspx.cs" Inherits="Book_webApplication.prof" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div class="row">
		<div class="col-md-12">
			<h2>کتاب ها</h2>
			<asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover"></asp:GridView>
		</div>
	</div>      
    </form>
</body>
</html>
