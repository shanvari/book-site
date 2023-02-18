<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyhistory.aspx.cs" Inherits="Book_webApplication.history" %>

<!DOCTYPE html>

<html dir="rtl" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>history</title>
    <meta charset ="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scal" />
    <meta name="description" content="book profile" />
    <meta name="author" content="Shamim" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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