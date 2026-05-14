<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginadmin.aspx.cs" Inherits="project.loginadmin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #1e3c72, #2a5298);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-card {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            width: 350px;
            text-align: center;
        }

        .login-card h2 {
            color: #243b55;
            margin-bottom: 25px;
        }

        .input-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box; /* لضمان عدم خروج الحقل عن الإطار */
        }

        .btn-admin {
            width: 100%;
            padding: 12px;
            background: #243b55;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
        }

        .btn-admin:hover {
            background: #34495e;
        }

        .error-msg {
            color: #e74c3c;
            font-size: 13px;
            margin-top: 5px;
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-card">
            <h2>🛡️ Admin Login</h2>

            <div class="input-group">
                <label>Username</label>
                <asp:TextBox ID="txtAdminUser" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtAdminUser" 
                    ErrorMessage="Username is required" CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="input-group">
                <label>Password</label>
                <asp:TextBox ID="txtAdminPass" runat="server" CssClass="form-control" TextMode="Password" placeholder="••••••••"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="txtAdminPass" 
                    ErrorMessage="Password is required" CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <asp:Button ID="btnLoginAdmin" runat="server" Text="Access Dashboard" CssClass="btn-admin" OnClick="btnLoginAdmin_Click" />
            
            <asp:Label ID="lblStatus" runat="server" CssClass="error-msg" style="margin-top:15px;"></asp:Label>
        </div>
    </form>
</body>
</html>