<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cybersec.aspx.cs" Inherits="project.cybersec" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Cyber Security Test</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: linear-gradient(135deg, #0f172a, #1e293b);
            color: white;
        }
        .container {
            width: 850px;
            margin: auto;
            padding: 30px;
        }
        .card {
            background: #111827;
            padding: 20px;
            margin-bottom: 15px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.4);
            border-left: 5px solid #ef4444;
        }
        h1 {
            text-align: center;
            color: #f87171;
        }
        .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 10px;
            background: linear-gradient(135deg, #ef4444, #b91c1c);
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        .btn-reg {
            background: linear-gradient(135deg, #22c55e, #16a34a) !important;
            margin-bottom: 20px;
        }
        .result {
            display: block;
            text-align: center;
            margin-bottom: 20px;
            font-size: 22px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>🛡️ Cyber Security Test</h1>
            
            <asp:Label ID="lblResult" runat="server" CssClass="result" Visible="false" />

            <asp:Button ID="btnRegisterNow" runat="server"
                Text="Success! Click here to Register Now"
                CssClass="btn btn-reg"
                OnClick="regnow"
                Visible="false" />

            <div class="card">
                <h4>1. Phishing is:</h4>
                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem Text="Stealing info via fake emails" Value="A" />
                    <asp:ListItem Text="Fixing a computer" Value="B" />
                </asp:RadioButtonList>
            </div>

            <div class="card">
                <h4>2. A Firewall:</h4>
                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem Text="Blocks unauthorized access" Value="A" />
                    <asp:ListItem Text="Cleans the CPU dust" Value="B" />
                </asp:RadioButtonList>
            </div>

            <div class="card">
                <h4>3. Strongest password:</h4>
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem Text="Secur!ty_2026#" Value="A" />
                    <asp:ListItem Text="password123" Value="B" />
                </asp:RadioButtonList>
            </div>

            <div class="card">
                <h4>4. VPN:</h4>
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem Text="Virtual Private Network" Value="A" />
                    <asp:ListItem Text="Very Poor Network" Value="B" />
                </asp:RadioButtonList>
            </div>

            <div class="card">
                <h4>5. Malware is:</h4>
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem Text="Harmful software" Value="A" />
                    <asp:ListItem Text="Hardware part" Value="B" />
                </asp:RadioButtonList>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit Test" CssClass="btn" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>