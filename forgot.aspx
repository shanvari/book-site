<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="Book_webApplication.forgot" %>

<!DOCTYPE html>

<html dir="rtl" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>forgot</title>
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
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">بازیابی رمز عبور</h3>
            <form runat="server">
              <div class="row">
                <div class="mb-4">
                  <div class="form-outline">
                    <label class="form-label" for="txtEmail">لطفا ایمیلتان را وارد کنید، رمز عبور جدید برای شما ارسال خواهد شد</label>
                    <asp:TextBox ID="txtEmail" placeholder="abcd@gmail.com" runat="server"></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="ایمیل نمی تواند خالی باشد" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>  
                     <br>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="فرمت ایمیل مناسب را وارد کنید" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>   
                  </div>
                </div>
              </div>
              <div class="mt-4 pt-2">
                  <asp:Button id="btn1" class="btn btn-primary btn-lg" Text="ارسال" OnClick="fg" runat="server"/>
              </div>
              <asp:Label ID="L1" runat="server" Font-Size="X-Large" ></asp:Label>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>