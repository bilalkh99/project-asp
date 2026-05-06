<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="academyform.aspx.cs" Inherits="project.academyform" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Open Skills Academy</title>

    <style>
        body{
            margin:0;
            font-family:Segoe UI;
            background: linear-gradient(135deg, #e0f2fe, #f8fafc);
        }

        .container{
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
        }

        .card{
            width:430px;
            padding:30px;
            border-radius:20px;
            background:white;
            box-shadow:0 20px 50px rgba(0,0,0,0.1);
            border:1px solid #e5e7eb;
        }

        .title{
            text-align:center;
            font-size:28px;
            font-weight:bold;
            color:#1d4ed8;
        }

        .subtitle{
            text-align:center;
            font-size:13px;
            color:#6b7280;
            margin-bottom:20px;
        }

        .input{
            width:100%;
            padding:12px;
            margin-top:10px;
            border-radius:12px;
            border:1px solid #d1d5db;
            background:#f9fafb;
            transition:0.3s;
            outline:none;
        }

        .input:focus{
            border-color:#3b82f6;
            box-shadow:0 0 8px #93c5fd;
            background:white;
        }

        .btn{
            width:100%;
            padding:13px;
            margin-top:18px;
            border:none;
            border-radius:12px;
            background: linear-gradient(135deg,#3b82f6,#1d4ed8);
            color:white;
            font-size:16px;
            cursor:pointer;
            transition:0.3s;
        }

        .btn:hover{
            transform:scale(1.03);
            box-shadow:0 10px 25px rgba(59,130,246,0.3);
        }

        .msg{
            text-align:center;
            margin-top:15px;
            color:#16a34a;
            font-weight:bold;
        }

        .badge{
            text-align:center;
            font-size:12px;
            color:#64748b;
            margin-bottom:10px;
        }
    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="container">

<div class="card">

    <div class="title">🎓 Open Skills Academy</div>
    <div class="subtitle">Start your professional journey</div>
    <div class="badge"></div>

    <asp:TextBox ID="txtName" runat="server" CssClass="input" placeholder="First Name" />
    <asp:TextBox ID="txtLastName" runat="server" CssClass="input" placeholder="Last Name" />
    <asp:TextBox ID="txtLocation" runat="server" CssClass="input" placeholder="Location" />
    <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Email Address" />
    <asp:TextBox ID="txtPhone" runat="server" CssClass="input" placeholder="Phone Number" />

    <asp:Button ID="btnRegister" runat="server"
        Text="Join Academy"
        CssClass="btn"
        OnClick="btnRegister_Click" />

    <asp:Label ID="lblMsg" runat="server" CssClass="msg" />

</div>

</div>

</form>

</body>
</html>