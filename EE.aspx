<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EE.aspx.cs" Inherits="project.EE" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>EE Quiz</title>

<style>
    body {
        margin: 0;
        font-family: Arial;
        background: #0f172a;
        color: white;
    }

    .box {
        width: 70%;
        margin: auto;
        margin-top: 30px;
        background: #111827;
        padding: 20px;
        border-radius: 15px;
    }

    .q {
        margin-bottom: 12px;
    }

    .btn {
        width: 100%;
        padding: 10px;
        background: #3b82f6;
        border: none;
        color: white;
        border-radius: 10px;
        cursor: pointer;
    }

</style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2 style="text-align:center;">⚡ Electrical Engineering Quiz</h2>
    <asp:Label ID="lblResult" runat="server"></asp:Label>
    
<asp:Button ID="btnRegisterNow" runat="server"
    Text="Register Now"
    CssClass="btn register"
    OnClick="regnow"
    Visible="false" />

<!-- Q1 -->
<div class="q">
<p>1. Unit of current?</p>
<asp:RadioButtonList ID="q1" runat="server">
<asp:ListItem Text="Ampere" Value="A" />
<asp:ListItem Text="Volt" Value="B" />
<asp:ListItem Text="Ohm" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q2 -->
<div class="q">
<p>2. Ohm's Law?</p>
<asp:RadioButtonList ID="q2" runat="server">
<asp:ListItem Text="V=IR" Value="A" />
<asp:ListItem Text="F=ma" Value="B" />
<asp:ListItem Text="E=mc2" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q3 -->
<div class="q">
<p>3. Resistance unit?</p>
<asp:RadioButtonList ID="q3" runat="server">
<asp:ListItem Text="Ohm" Value="A" />
<asp:ListItem Text="Volt" Value="B" />
<asp:ListItem Text="Ampere" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q4 -->
<div class="q"><p>4. Power unit?</p>
<asp:RadioButtonList ID="q4" runat="server">
<asp:ListItem Value="A">Watt</asp:ListItem>
<asp:ListItem Value="B">Volt</asp:ListItem>
<asp:ListItem Value="C">Ohm</asp:ListItem>
</asp:RadioButtonList>
</div>

<!-- Q5 -->
<div class="q"><p>5. Device that stores energy?</p>
<asp:RadioButtonList ID="q5" runat="server">
<asp:ListItem Value="A">Battery</asp:ListItem>
<asp:ListItem Value="B">Switch</asp:ListItem>
<asp:ListItem Value="C">Wire</asp:ListItem>
</asp:RadioButtonList>
</div>

<!-- Q6 -->
<div class="q"><p>6. Electric charge unit?</p>
<asp:RadioButtonList ID="q6" runat="server">
<asp:ListItem Value="A">Coulomb</asp:ListItem>
<asp:ListItem Value="B">Ampere</asp:ListItem>
<asp:ListItem Value="C">Volt</asp:ListItem>
</asp:RadioButtonList>
</div>

<!-- Q7 -->
<div class="q"><p>7. AC means?</p>
<asp:RadioButtonList ID="q7" runat="server">
<asp:ListItem Value="A">Alternating Current</asp:ListItem>
<asp:ListItem Value="B">Active Current</asp:ListItem>
<asp:ListItem Value="C">Average Current</asp:ListItem>
</asp:RadioButtonList>
</div>

<!-- Q8 -->
<div class="q"><p>8. DC means?</p>
<asp:RadioButtonList ID="q8" runat="server">
<asp:ListItem Value="A">Direct Current</asp:ListItem>
<asp:ListItem Value="B">Digital Current</asp:ListItem>
<asp:ListItem Value="C">Dynamic Current</asp:ListItem>
</asp:RadioButtonList>
</div>

<!-- Q9 -->
<div class="q"><p>9. Voltage unit?</p>
<asp:RadioButtonList ID="q9" runat="server">
<asp:ListItem Value="A">Volt</asp:ListItem>
<asp:ListItem Value="B">Ampere</asp:ListItem>
<asp:ListItem Value="C">Ohm</asp:ListItem>
</asp:RadioButtonList>
</div>

<!-- Q10 -->
<div class="q"><p>10. Short circuit is?</p>
<asp:RadioButtonList ID="q10" runat="server">
<asp:ListItem Value="A">Low resistance path</asp:ListItem>
<asp:ListItem Value="B">High resistance path</asp:ListItem>
<asp:ListItem Value="C">Open circuit</asp:ListItem>
</asp:RadioButtonList>
</div>

<!-- Q11-20 (same pattern) -->
<div class="q"><p>11. Frequency unit?</p><asp:RadioButtonList ID="q11" runat="server"><asp:ListItem Value="A">Hertz</asp:ListItem><asp:ListItem Value="B">Volt</asp:ListItem><asp:ListItem Value="C">Ampere</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>12. Generator produces?</p><asp:RadioButtonList ID="q12" runat="server"><asp:ListItem Value="A">Electricity</asp:ListItem><asp:ListItem Value="B">Heat</asp:ListItem><asp:ListItem Value="C">Light</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>13. Conductor example?</p><asp:RadioButtonList ID="q13" runat="server"><asp:ListItem Value="A">Copper</asp:ListItem><asp:ListItem Value="B">Wood</asp:ListItem><asp:ListItem Value="C">Plastic</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>14. Insulator example?</p><asp:RadioButtonList ID="q14" runat="server"><asp:ListItem Value="A">Rubber</asp:ListItem><asp:ListItem Value="B">Copper</asp:ListItem><asp:ListItem Value="C">Iron</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>15. Transformer changes?</p><asp:RadioButtonList ID="q15" runat="server"><asp:ListItem Value="A">Voltage</asp:ListItem><asp:ListItem Value="B">Weight</asp:ListItem><asp:ListItem Value="C">Speed</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>16. Power formula?</p><asp:RadioButtonList ID="q16" runat="server"><asp:ListItem Value="A">P=VI</asp:ListItem><asp:ListItem Value="B">P=V/I</asp:ListItem><asp:ListItem Value="C">P=IR</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>17. Fuse protects?</p><asp:RadioButtonList ID="q17" runat="server"><asp:ListItem Value="A">Circuit</asp:ListItem><asp:ListItem Value="B">Battery</asp:ListItem><asp:ListItem Value="C">Motor</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>18. Parallel circuit voltage?</p><asp:RadioButtonList ID="q18" runat="server"><asp:ListItem Value="A">Same</asp:ListItem><asp:ListItem Value="B">Different</asp:ListItem><asp:ListItem Value="C">Zero</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>19. Series circuit current?</p><asp:RadioButtonList ID="q19" runat="server"><asp:ListItem Value="A">Same</asp:ListItem><asp:ListItem Value="B">Different</asp:ListItem><asp:ListItem Value="C">Zero</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>20. Electric motor converts?</p><asp:RadioButtonList ID="q20" runat="server"><asp:ListItem Value="A">Electric → Mechanical</asp:ListItem><asp:ListItem Value="B">Heat → Light</asp:ListItem><asp:ListItem Value="C">Sound → Heat</asp:ListItem></asp:RadioButtonList></div>

<br />

<asp:Button ID="btnSubmit" runat="server"
    Text="Submit"
    CssClass="btn"
    OnClick="btnSubmit_Click" />

<br /><br />



</div>

</form>

</body>
</html>