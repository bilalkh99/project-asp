<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs"
    Inherits="project.WebForm1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login</title>

<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', sans-serif;
        background: #0f172a;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .card {
        width: 360px;
        padding: 35px;
        border-radius: 16px;
        background: #111827;
        box-shadow: 0 20px 50px rgba(0,0,0,0.5);
        text-align: center;
        color: white;
    }

    .input {
        width: 100%;
        padding: 12px 14px;
        margin: 10px 0;

        border: 1px solid #2d3748;
        border-radius: 10px;

        background: #1f2937;
        color: white;

        font-size: 15px;
        outline: none;
        transition: 0.3s;
    }

    .input:focus {
        border-color: #3b82f6;
        box-shadow: 0 0 8px #3b82f6;
    }

    .btn {
        width: 100%;
        padding: 12px;

        margin-top: 12px;
        border: none;
        border-radius: 10px;

        background: linear-gradient(135deg, #3b82f6, #2563eb);
        color: white;

        font-size: 16px;
        font-weight: bold;

        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 20px rgba(59,130,246,0.4);
    }

    .link {
        display: block;
        margin-top: 15px;
        color: #93c5fd;
        text-decoration: none;
    }

    .link:hover {
        text-decoration: underline;
    }

    .title {
        margin-bottom: 20px;
    }

</style>

</head>

<body>

<form id="form1" runat="server">

<div class="card">

    <h2 class="title">Login</h2>

    <asp:TextBox ID="txtLoginUser" runat="server"
        CssClass="input" placeholder="Username" />

    <asp:TextBox ID="txtLoginPass" runat="server"
        CssClass="input" TextMode="Password" placeholder="Password" />

    <asp:Button ID="btnLogin" runat="server"
        Text="Login" CssClass="btn"
        OnClick="btnLogin_Click" />

    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" />

    <asp:LinkButton ID="lnkGo" runat="server"
        PostBackUrl="WebForm2.aspx"
        CssClass="link">
        I don't have account
    </asp:LinkButton>

</div>

</form>

</body>
</html>