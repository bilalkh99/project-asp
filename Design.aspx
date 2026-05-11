<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="project.Design" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Graphic Design Quiz</title>

<style>
body {
    margin:0;
    font-family:Arial;
    background:#0f172a;
    color:white;
}

.box {
    width:70%;
    margin:auto;
    margin-top:30px;
    background:#111827;
    padding:20px;
    border-radius:15px;
}

.q {
    margin-bottom:12px;
}

.btn {
    width:100%;
    padding:10px;
    background:#3b82f6;
    border:none;
    color:white;
    border-radius:10px;
    cursor:pointer;
}

.result {
    text-align:center;
    margin:15px 0;
    font-size:20px;
    color:#34d399;
}
</style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2 style="text-align:center;">🎨 Graphic Design Quiz</h2>

<asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

<asp:Button ID="btnRegisterNow" runat="server"
    Text="Register Now"
    CssClass="btn"
    OnClick="regnow"
    Visible="false" />

<!-- Q1 -->
<div class="q">
<p>1. Photoshop is used for?</p>
<asp:RadioButtonList ID="q1" runat="server">
<asp:ListItem Text="Image editing" Value="A" />
<asp:ListItem Text="Cooking" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q2 -->
<div class="q">
<p>2. RGB is used for?</p>
<asp:RadioButtonList ID="q2" runat="server">
<asp:ListItem Text="Digital screens" Value="A" />
<asp:ListItem Text="Printing only" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q3 -->
<div class="q">
<p>3. Logo should be?</p>
<asp:RadioButtonList ID="q3" runat="server">
<asp:ListItem Text="Simple and memorable" Value="A" />
<asp:ListItem Text="Very confusing" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q4 -->
<div class="q">
<p>4. Typography means?</p>
<asp:RadioButtonList ID="q4" runat="server">
<asp:ListItem Text="Working with fonts" Value="A" />
<asp:ListItem Text="Video editing" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q5 -->
<div class="q">
<p>5. Canva is?</p>
<asp:RadioButtonList ID="q5" runat="server">
<asp:ListItem Text="Design tool" Value="A" />
<asp:ListItem Text="Game" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q6 -->
<div class="q">
<p>6. Vector graphics can?</p>
<asp:RadioButtonList ID="q6" runat="server">
<asp:ListItem Text="Scale without losing quality" Value="A" />
<asp:ListItem Text="Break when resized" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q7 -->
<div class="q">
<p>7. PNG supports?</p>
<asp:RadioButtonList ID="q7" runat="server">
<asp:ListItem Text="Transparent background" Value="A" />
<asp:ListItem Text="3D graphics" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q8 -->
<div class="q">
<p>8. Adobe Illustrator is used for?</p>
<asp:RadioButtonList ID="q8" runat="server">
<asp:ListItem Text="Vector design" Value="A" />
<asp:ListItem Text="Music production" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q9 -->
<div class="q">
<p>9. Good color combinations improve?</p>
<asp:RadioButtonList ID="q9" runat="server">
<asp:ListItem Text="Visual appeal" Value="A" />
<asp:ListItem Text="System speed" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q10 -->
<div class="q">
<p>10. Branding means?</p>
<asp:RadioButtonList ID="q10" runat="server">
<asp:ListItem Text="Company identity" Value="A" />
<asp:ListItem Text="Deleting files" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q11 -->
<div class="q">
<p>11. UI means?</p>
<asp:RadioButtonList ID="q11" runat="server">
<asp:ListItem Text="User Interface" Value="A" />
<asp:ListItem Text="User Internet" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q12 -->
<div class="q">
<p>12. UX focuses on?</p>
<asp:RadioButtonList ID="q12" runat="server">
<asp:ListItem Text="User experience" Value="A" />
<asp:ListItem Text="Server hardware" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q13 -->
<div class="q">
<p>13. Poster design should?</p>
<asp:RadioButtonList ID="q13" runat="server">
<asp:ListItem Text="Attract attention" Value="A" />
<asp:ListItem Text="Be unreadable" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q14 -->
<div class="q">
<p>14. Mockup is?</p>
<asp:RadioButtonList ID="q14" runat="server">
<asp:ListItem Text="Design preview" Value="A" />
<asp:ListItem Text="Printer" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q15 -->
<div class="q">
<p>15. Alignment improves?</p>
<asp:RadioButtonList ID="q15" runat="server">
<asp:ListItem Text="Organization" Value="A" />
<asp:ListItem Text="Noise" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q16 -->
<div class="q">
<p>16. White space helps?</p>
<asp:RadioButtonList ID="q16" runat="server">
<asp:ListItem Text="Clean design" Value="A" />
<asp:ListItem Text="Confusion" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q17 -->
<div class="q">
<p>17. Figma is used for?</p>
<asp:RadioButtonList ID="q17" runat="server">
<asp:ListItem Text="UI/UX design" Value="A" />
<asp:ListItem Text="Video games" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q18 -->
<div class="q">
<p>18. JPEG is best for?</p>
<asp:RadioButtonList ID="q18" runat="server">
<asp:ListItem Text="Photos" Value="A" />
<asp:ListItem Text="Transparent logos" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q19 -->
<div class="q">
<p>19. Contrast improves?</p>
<asp:RadioButtonList ID="q19" runat="server">
<asp:ListItem Text="Readability" Value="A" />
<asp:ListItem Text="Lag" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q20 -->
<div class="q">
<p>20. Designer should understand?</p>
<asp:RadioButtonList ID="q20" runat="server">
<asp:ListItem Text="Creativity and communication" Value="A" />
<asp:ListItem Text="Only hardware" Value="B" />
</asp:RadioButtonList>
</div>

<br />

<asp:Button ID="btnSubmit" runat="server"
Text="Submit"
CssClass="btn"
OnClick="btnSubmit_Click" />

</div>

</form>

</body>
</html>