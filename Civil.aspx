<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Civil.aspx.cs" Inherits="project.Civil" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Civil Engineering Quiz</title>

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

<h2 style="text-align:center;">🏗️ Civil Engineering Quiz</h2>

<asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
    
<asp:Button ID="btnRegisterNow" runat="server"
    Text="Register Now"
    CssClass="btn register"
    OnClick="regnow"
    Visible="false" />


<!-- Q1 -->
<div class="q">
<p>1. Main material in construction?</p>
<asp:RadioButtonList ID="q1" runat="server">
<asp:ListItem Text="Concrete" Value="A" />
<asp:ListItem Text="Wood only" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q2 -->
<div class="q">
<p>2. Steel is used for?</p>
<asp:RadioButtonList ID="q2" runat="server">
<asp:ListItem Text="Reinforcement" Value="A" />
<asp:ListItem Text="Decoration only" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q3 -->
<div class="q">
<p>3. Foundation purpose?</p>
<asp:RadioButtonList ID="q3" runat="server">
<asp:ListItem Text="Support load" Value="A" />
<asp:ListItem Text="Paint building" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q4 -->
<div class="q">
<p>4. Beam carries?</p>
<asp:RadioButtonList ID="q4" runat="server">
<asp:ListItem Text="Load" Value="A" />
<asp:ListItem Text="Water" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q5 -->
<div class="q">
<p>5. Column failure type?</p>
<asp:RadioButtonList ID="q5" runat="server">
<asp:ListItem Text="Buckling" Value="A" />
<asp:ListItem Text="Cooling" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q6 -->
<div class="q">
<p>6. Cement + water = ?</p>
<asp:RadioButtonList ID="q6" runat="server">
<asp:ListItem Text="Paste" Value="A" />
<asp:ListItem Text="Steel" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q7 -->
<div class="q">
<p>7. Aggregate is?</p>
<asp:RadioButtonList ID="q7" runat="server">
<asp:ListItem Text="Sand & gravel" Value="A" />
<asp:ListItem Text="Plastic" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q8 -->
<div class="q">
<p>8. Slab is?</p>
<asp:RadioButtonList ID="q8" runat="server">
<asp:ListItem Text="Horizontal element" Value="A" />
<asp:ListItem Text="Vertical pole" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q9 -->
<div class="q">
<p>9. Surveying used for?</p>
<asp:RadioButtonList ID="q9" runat="server">
<asp:ListItem Text="Measure land" Value="A" />
<asp:ListItem Text="Cooking" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q10 -->
<div class="q">
<p>10. Load types?</p>
<asp:RadioButtonList ID="q10" runat="server">
<asp:ListItem Text="Dead & live" Value="A" />
<asp:ListItem Text="Hot & cold" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q11 -->
<div class="q">
<p>11. Concrete strength depends on?</p>
<asp:RadioButtonList ID="q11" runat="server">
<asp:ListItem Text="Water ratio" Value="A" />
<asp:ListItem Text="Color" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q12 -->
<div class="q">
<p>12. Bridge type?</p>
<asp:RadioButtonList ID="q12" runat="server">
<asp:ListItem Text="Beam bridge" Value="A" />
<asp:ListItem Text="Air bridge" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q13 -->
<div class="q">
<p>13. Soil mechanics studies?</p>
<asp:RadioButtonList ID="q13" runat="server">
<asp:ListItem Text="Soil behavior" Value="A" />
<asp:ListItem Text="Electricity" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q14 -->
<div class="q">
<p>14. RCC means?</p>
<asp:RadioButtonList ID="q14" runat="server">
<asp:ListItem Text="Reinforced Cement Concrete" Value="A" />
<asp:ListItem Text="Random Concrete" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q15 -->
<div class="q">
<p>15. Beam reinforcement placed?</p>
<asp:RadioButtonList ID="q15" runat="server">
<asp:ListItem Text="Bottom zone" Value="A" />
<asp:ListItem Text="Top only" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q16 -->
<div class="q">
<p>16. Water cement ratio affects?</p>
<asp:RadioButtonList ID="q16" runat="server">
<asp:ListItem Text="Strength" Value="A" />
<asp:ListItem Text="Color" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q17 -->
<div class="q">
<p>17. Road design includes?</p>
<asp:RadioButtonList ID="q17" runat="server">
<asp:ListItem Text="Slope" Value="A" />
<asp:ListItem Text="Only paint" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q18 -->
<div class="q">
<p>18. Retaining wall used for?</p>
<asp:RadioButtonList ID="q18" runat="server">
<asp:ListItem Text="Hold soil" Value="A" />
<asp:ListItem Text="Decoration" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q19 -->
<div class="q">
<p>19. Drainage system removes?</p>
<asp:RadioButtonList ID="q19" runat="server">
<asp:ListItem Text="Water" Value="A" />
<asp:ListItem Text="Air" Value="B" />
</asp:RadioButtonList>
</div>

<!-- Q20 -->
<div class="q">
<p>20. Civil engineer works on?</p>
<asp:RadioButtonList ID="q20" runat="server">
<asp:ListItem Text="Buildings" Value="A" />
<asp:ListItem Text="Games" Value="B" />
</asp:RadioButtonList>
</div>

<asp:Button ID="btnSubmit" runat="server"
Text="Submit"
CssClass="btn"
OnClick="btnSubmit_Click" />

</div>

</form>

</body>
</html>