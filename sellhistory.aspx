<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sellhistory.aspx.cs" Inherits="Book_webApplication.sellhistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sell history</title>
    <meta charset ="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scal" />
    <meta name="description" content="book profile" />
    <meta name="author" content="Shamim" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
<div class="row">
		<div class="col-md-12">
			<h2>کتاب ها</h2>
			<asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover"></asp:GridView>
		</div>
	</div>      

        </div>
    </form>
</body>
</html>