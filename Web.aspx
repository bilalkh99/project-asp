<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="web.aspx.cs" Inherits="project.web" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Web Development Test</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: linear-gradient(135deg, #0f172a, #083344);
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
            border-left: 5px solid #06b6d4; /* Cyan accent for Web */
        }
        h1 {
            text-align: center;
            color: #22d3ee;
        }
        .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 10px;
            background: linear-gradient(135deg, #06b6d4, #0891b2);
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
            <h1>🌐 Web Development Test</h1>
            
            <asp:Label ID="lblResult" runat="server" CssClass="result" Visible="false" />

            <asp:Button ID="btnRegisterNow" runat="server"
                Text="Test Finished! Click here to Register Now"
                CssClass="btn btn-reg"
                OnClick="regnow"
                Visible="false" />

            <!-- Q1 to Q20 -->
            <div class="card"><h4>1. HTML stands for?</h4><asp:RadioButtonList ID="q1" runat="server"><asp:ListItem Text="HyperText Markup Language" Value="A" /><asp:ListItem Text="High Tech Machine Language" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>2. CSS is used for?</h4><asp:RadioButtonList ID="q2" runat="server"><asp:ListItem Text="Styling and Layout" Value="A" /><asp:ListItem Text="Data Processing" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>3. Which tag is used for links?</h4><asp:RadioButtonList ID="q3" runat="server"><asp:ListItem Text="&lt;a&gt;" Value="A" /><asp:ListItem Text="&lt;link&gt;" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>4. JavaScript is a?</h4><asp:RadioButtonList ID="q4" runat="server"><asp:ListItem Text="Scripting Language" Value="A" /><asp:ListItem Text="Operating System" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>5. HTTP stands for?</h4><asp:RadioButtonList ID="q5" runat="server"><asp:ListItem Text="HyperText Transfer Protocol" Value="A" /><asp:ListItem Text="Home Tool Text Process" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>6. Which is a Database?</h4><asp:RadioButtonList ID="q6" runat="server"><asp:ListItem Text="SQL Server" Value="A" /><asp:ListItem Text="Photoshop" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>7. Web server example?</h4><asp:RadioButtonList ID="q7" runat="server"><asp:ListItem Text="IIS or Apache" Value="A" /><asp:ListItem Text="Chrome" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>8. Frontend framework?</h4><asp:RadioButtonList ID="q8" runat="server"><asp:ListItem Text="React" Value="A" /><asp:ListItem Text="Node.js" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>9. Largest heading tag?</h4><asp:RadioButtonList ID="q9" runat="server"><asp:ListItem Text="H1" Value="A" /><asp:ListItem Text="H6" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>10. API stands for?</h4><asp:RadioButtonList ID="q10" runat="server"><asp:ListItem Text="Application Programming Interface" Value="A" /><asp:ListItem Text="Apple Process Internal" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>11. Boolean value?</h4><asp:RadioButtonList ID="q11" runat="server"><asp:ListItem Text="True/False" Value="A" /><asp:ListItem Text="1, 2, 3" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>12. Backend language?</h4><asp:RadioButtonList ID="q12" runat="server"><asp:ListItem Text="C# or PHP" Value="A" /><asp:ListItem Text="CSS" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>13. SQL is used for?</h4><asp:RadioButtonList ID="q13" runat="server"><asp:ListItem Text="Managing Databases" Value="A" /><asp:ListItem Text="Writing Essays" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>14. Responsive design means?</h4><asp:RadioButtonList ID="q14" runat="server"><asp:ListItem Text="Fits all screens" Value="A" /><asp:ListItem Text="Loads fast" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>15. DNS stands for?</h4><asp:RadioButtonList ID="q15" runat="server"><asp:ListItem Text="Domain Name System" Value="A" /><asp:ListItem Text="Data Net Service" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>16. Git is used for?</h4><asp:RadioButtonList ID="q16" runat="server"><asp:ListItem Text="Version Control" Value="A" /><asp:ListItem Text="Internet Speed" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>17. Browser engine?</h4><asp:RadioButtonList ID="q17" runat="server"><asp:ListItem Text="V8" Value="A" /><asp:ListItem Text="RAM" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>18. JSON is a?</h4><asp:RadioButtonList ID="q18" runat="server"><asp:ListItem Text="Data Format" Value="A" /><asp:ListItem Text="Code Editor" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>19. Primary Key is in?</h4><asp:RadioButtonList ID="q19" runat="server"><asp:ListItem Text="Database Table" Value="A" /><asp:ListItem Text="CSS File" Value="B" /></asp:RadioButtonList></div>
            <div class="card"><h4>20. Cloud hosting example?</h4><asp:RadioButtonList ID="q20" runat="server"><asp:ListItem Text="Azure or AWS" Value="A" /><asp:ListItem Text="USB Drive" Value="B" /></asp:RadioButtonList></div>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit Web Test" CssClass="btn" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>