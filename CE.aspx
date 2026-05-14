<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CE.aspx.cs" Inherits="project.CE" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Computer Engineering Test</title>

    <style>
        body{
            margin:0;
            font-family:Segoe UI;
            background:linear-gradient(135deg,#0f172a,#1e293b);
            color:white;
        }

        .container{
            width:850px;
            margin:auto;
            padding:30px;
        }

        .card{
            background:#111827;
            padding:15px;
            margin-bottom:15px;
            border-radius:12px;
            box-shadow:0 10px 30px rgba(0,0,0,0.4);
        }

        h1{
            text-align:center;
            color:#60a5fa;
        }

        .btn{
            width:100%;
            padding:12px;
            border:none;
            border-radius:10px;
            background:linear-gradient(135deg,#3b82f6,#2563eb);
            color:white;
            font-size:16px;
            cursor:pointer;
            margin-top:20px;
        }

        .result{
            text-align:center;
            margin-top:20px;
            font-size:20px;
            color:#34d399;
            font-weight:bold;
        }
        .register-link {
    display:block;
    margin-top:15px;
    text-align:center;
    color:#60a5fa;
    text-decoration:none;
    font-weight:bold;
}

.register-link:hover {
    color:#93c5fd;
}

.btn-register {
    width:100%;
    padding:10px;
    margin-top:10px;
    border:none;
    border-radius:10px;
    background:#22c55e;
    color:white;
    cursor:pointer;
}

.btn-register:hover {
    background:#16a34a;
}
    </style>

</head>

<body>

<form id="form1" runat="server">

<div class="container">

<h1>💻 Computer Engineering Test</h1>

<asp:Label ID="lblResult" runat="server" CssClass="result" />

<!-- BUTTON REGISTER -->
<asp:Button ID="btnRegisterNow" runat="server"
    Text="Register with us now"
    CssClass="btn"
    OnClick="regnow"
    Visible="false" />



<!-- Q1 -->
<div class="card">
<h4>1. Computer is used for:</h4>
<asp:RadioButtonList ID="q1" runat="server">
    <asp:ListItem Text="Processing data" Value="A" />
    <asp:ListItem Text="Cooking" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q2 -->
<div class="card">
<h4>2. RAM is:</h4>
<asp:RadioButtonList ID="q2" runat="server">
    <asp:ListItem Text="Temporary memory" Value="A" />
    <asp:ListItem Text="Storage only" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q3 -->
<div class="card">
<h4>3. Input device:</h4>
<asp:RadioButtonList ID="q3" runat="server">
    <asp:ListItem Text="Keyboard" Value="A" />
    <asp:ListItem Text="Monitor" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q4 -->
<div class="card">
<h4>4. CPU stands for:</h4>
<asp:RadioButtonList ID="q4" runat="server">
    <asp:ListItem Text="Central Processing Unit" Value="A" />
    <asp:ListItem Text="Computer Power Unit" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q5 -->
<div class="card">
<h4>5. Software example:</h4>
<asp:RadioButtonList ID="q5" runat="server">
    <asp:ListItem Text="Windows" Value="A" />
    <asp:ListItem Text="Mouse" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q6 -->
<div class="card">
<h4>6. Slow program:</h4>
<asp:RadioButtonList ID="q6" runat="server">
    <asp:ListItem Text="Optimize code" Value="A" />
    <asp:ListItem Text="Ignore" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q7 -->
<div class="card">
<h4>7. Debugging:</h4>
<asp:RadioButtonList ID="q7" runat="server">
    <asp:ListItem Text="Check logs" Value="A" />
    <asp:ListItem Text="Random change" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q8 -->
<div class="card">
<h4>8. Database is used for:</h4>
<asp:RadioButtonList ID="q8" runat="server">
    <asp:ListItem Text="Store data" Value="A" />
    <asp:ListItem Text="Play games" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q9 -->
<div class="card">
<h4>9. Best coding practice:</h4>
<asp:RadioButtonList ID="q9" runat="server">
    <asp:ListItem Text="Clean code" Value="A" />
    <asp:ListItem Text="Messy code" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q10 -->
<div class="card">
<h4>10. Algorithm is:</h4>
<asp:RadioButtonList ID="q10" runat="server">
    <asp:ListItem Text="Step by step solution" Value="A" />
    <asp:ListItem Text="Random guessing" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q11 -->
<div class="card">
<h4>11. Network issue:</h4>
<asp:RadioButtonList ID="q11" runat="server">
    <asp:ListItem Text="Check config" Value="A" />
    <asp:ListItem Text="Ignore" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q12 -->
<div class="card">
<h4>12. Bug means:</h4>
<asp:RadioButtonList ID="q12" runat="server">
    <asp:ListItem Text="Error in program" Value="A" />
    <asp:ListItem Text="Hardware" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q13 -->
<div class="card">
<h4>13. OOP concept:</h4>
<asp:RadioButtonList ID="q13" runat="server">
    <asp:ListItem Text="Inheritance" Value="A" />
    <asp:ListItem Text="Clicking" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q14 -->
<div class="card">
<h4>14. System design:</h4>
<asp:RadioButtonList ID="q14" runat="server">
    <asp:ListItem Text="Planning" Value="A" />
    <asp:ListItem Text="Guessing" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q15 -->
<div class="card">
<h4>15. Multithreading:</h4>
<asp:RadioButtonList ID="q15" runat="server">
    <asp:ListItem Text="Parallel tasks" Value="A" />
    <asp:ListItem Text="Single task" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q16 -->
<div class="card">
<h4>16. System crash:</h4>
<asp:RadioButtonList ID="q16" runat="server">
    <asp:ListItem Text="Analyze logs" Value="A" />
    <asp:ListItem Text="Ignore" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q17 -->
<div class="card">
<h4>17. Memory leak:</h4>
<asp:RadioButtonList ID="q17" runat="server">
    <asp:ListItem Text="Not freed memory" Value="A" />
    <asp:ListItem Text="Internet issue" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q18 -->
<div class="card">
<h4>18. Architecture:</h4>
<asp:RadioButtonList ID="q18" runat="server">
    <asp:ListItem Text="Modular design" Value="A" />
    <asp:ListItem Text="One file" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q19 -->
<div class="card">
<h4>19. Root cause:</h4>
<asp:RadioButtonList ID="q19" runat="server">
    <asp:ListItem Text="Main issue" Value="A" />
    <asp:ListItem Text="Restart PC" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q20 -->
<div class="card">
<h4>20. Engineering mindset:</h4>
<asp:RadioButtonList ID="q20" runat="server">
    <asp:ListItem Text="Problem solving" Value="A" />
    <asp:ListItem Text="Guessing" Value="B" />
</asp:RadioButtonList>
</div>

---

<asp:Button ID="btnSubmit" runat="server" Text="Submit Test" CssClass="btn" OnClick="btnSubmit_Click" />



<br />



</form>

</body>
</html>