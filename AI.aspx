<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AI.aspx.cs" Inherits="project.AI" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>AI Specialist Test</title>
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
            border-left: 5px solid #a855f7; /* Purple accent for AI */
        }
        h1 {
            text-align: center;
            color: #c084fc;
        }
        .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 10px;
            background: linear-gradient(135deg, #a855f7, #7e22ce);
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
            <h1>🧠 Artificial Intelligence Test</h1>
            
            <asp:Label ID="lblResult" runat="server" CssClass="result" Visible="false" />

            <asp:Button ID="btnRegisterNow" runat="server"
                Text="Test Completed! Click here to Register Now"
                CssClass="btn btn-reg"
                OnClick="regnow"
                Visible="false" />

            <div class="card">
                <h4>1. What is Machine Learning?</h4>
                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem Text="Algorithms that learn from data" Value="A" />
                    <asp:ListItem Text="A way to fix hardware" Value="B" />
                </asp:RadioButtonList>
            </div>

            <div class="card">
                <h4>2. 'NLP' stands for:</h4>
                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem Text="Natural Language Processing" Value="A" />
                    <asp:ListItem Text="Network Layer Protocol" Value="B" />
                </asp:RadioButtonList>
            </div>

            <div class="card">
                <h4>3. Which of these is an AI Chatbot?</h4>
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem Text="ChatGPT" Value="A" />
                    <asp:ListItem Text="Excel" Value="B" />
                </asp:RadioButtonList>
            </div>

            <div class="card">
                <h4>4. A Neural Network is inspired by:</h4>
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem Text="The human brain" Value="A" />
                    <asp:ListItem Text="Social media networks" Value="B" />
                </asp:RadioButtonList>
            </div>

            <div class="card">
                <h4>5. Deep Learning is a subset of:</h4>
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem Text="Machine Learning" Value="A" />
                    <asp:ListItem Text="Cyber Security" Value="B" />
                </asp:RadioButtonList>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit AI Test" CssClass="btn" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>