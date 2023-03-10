<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Book_webApplication.login" %>

<!DOCTYPE html>

<html dir="rtl" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <meta charset ="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scal" />
    <meta name="description" content="book profile" />
    <meta name="author" content="Shamim" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">ورود</h3>
            <form runat="server">
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <label class="form-label" for="firstName">نام کاربری</label>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="نام کاربری نمی تواند خالی باشد" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator>                    </div>
                  </div>
                
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <label class="form-label" for="pass">رمز عبور</label>
                    <asp:TextBox ID="pass" placeholder="4 تا 8 کاراکتر" runat="server"></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="رمزعبور نمی تواند خالی باشد" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>                    </div>
                  </div>
             </div>
              <div class="row">
               <div class="col">
                  <a href="forgot.aspx" >رمز عبورم را فراموش کردم</a>
               </div>
            </div>
            <div class="mt-4 pt-2">
                <asp:Button id="btn1" Text="ورود" OnClick="authenticate"  runat="server" class="btn btn-primary btn-lg"/>
            </div>
            <asp:Label ID="L2" runat="server" Font-Size="X-Large" ></asp:Label>
            </form>
            </div>
           </div>
          </div>
        </div>
      </div>
</section>
</body>
</html>