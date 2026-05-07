<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Telecom.aspx.cs" Inherits="project.Telecom" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Telecom Quiz</title>

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

<h2 style="text-align:center;">📡 Telecommunication Quiz</h2>

<asp:Label ID="lblResult" runat="server" CssClass="result" />

<asp:Button ID="btnRegisterNow" runat="server"
    Text="Register Now"
    CssClass="btn register"
    OnClick="regnow"
    Visible="false" />

<!-- Q1 -->
<div class="q">
<p>1. OSI layers number?</p>
<asp:RadioButtonList ID="q1" runat="server">
<asp:ListItem Text="7" Value="A" />
<asp:ListItem Text="5" Value="B" />
<asp:ListItem Text="4" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q2 -->
<div class="q">
<p>2. TCP stands for?</p>
<asp:RadioButtonList ID="q2" runat="server">
<asp:ListItem Text="Transmission Control Protocol" Value="A" />
<asp:ListItem Text="Transfer Control Program" Value="B" />
<asp:ListItem Text="Total Communication Process" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q3 -->
<div class="q">
<p>3. IP means?</p>
<asp:RadioButtonList ID="q3" runat="server">
<asp:ListItem Text="Internet Protocol" Value="A" />
<asp:ListItem Text="Internal Program" Value="B" />
<asp:ListItem Text="Internet Process" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q4 -->
<div class="q">
<p>4. WiFi works on?</p>
<asp:RadioButtonList ID="q4" runat="server">
<asp:ListItem Text="Radio waves" Value="A" />
<asp:ListItem Text="Light" Value="B" />
<asp:ListItem Text="Sound" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q5 -->
<div class="q">
<p>5. Router role?</p>
<asp:RadioButtonList ID="q5" runat="server">
<asp:ListItem Text="Route data" Value="A" />
<asp:ListItem Text="Store data" Value="B" />
<asp:ListItem Text="Delete data" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q6 -->
<div class="q">
<p>6. LAN means?</p>
<asp:RadioButtonList ID="q6" runat="server">
<asp:ListItem Text="Local Area Network" Value="A" />
<asp:ListItem Text="Large Area Network" Value="B" />
<asp:ListItem Text="Light Access Network" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q7 -->
<div class="q"><p>7. WAN means?</p>
<asp:RadioButtonList ID="q7" runat="server">
<asp:ListItem Text="Wide Area Network" Value="A" />
<asp:ListItem Text="Wireless Area Network" Value="B" />
<asp:ListItem Text="Web Access Network" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q8 -->
<div class="q"><p>8. Modem used for?</p>
<asp:RadioButtonList ID="q8" runat="server">
<asp:ListItem Text="Internet connection" Value="A" />
<asp:ListItem Text="Storage" Value="B" />
<asp:ListItem Text="Display" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q9 -->
<div class="q"><p>9. Fiber optics use?</p>
<asp:RadioButtonList ID="q9" runat="server">
<asp:ListItem Text="Light signals" Value="A" />
<asp:ListItem Text="Electric current" Value="B" />
<asp:ListItem Text="Sound waves" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q10 -->
<div class="q"><p>10. 4G is?</p>
<asp:RadioButtonList ID="q10" runat="server">
<asp:ListItem Text="Mobile network" Value="A" />
<asp:ListItem Text="Cable system" Value="B" />
<asp:ListItem Text="Software" Value="C" />
</asp:RadioButtonList>
</div>

<!-- Q11-20 -->
<div class="q"><p>11. 5G speed?</p><asp:RadioButtonList ID="q11" runat="server"><asp:ListItem Value="A">Very High</asp:ListItem><asp:ListItem Value="B">Low</asp:ListItem><asp:ListItem Value="C">None</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>12. IP address identifies?</p><asp:RadioButtonList ID="q12" runat="server"><asp:ListItem Value="A">Device</asp:ListItem><asp:ListItem Value="B">File</asp:ListItem><asp:ListItem Value="C">App</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>13. DNS used for?</p><asp:RadioButtonList ID="q13" runat="server"><asp:ListItem Value="A">Domain name</asp:ListItem><asp:ListItem Value="B">Data storage</asp:ListItem><asp:ListItem Value="C">Security</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>14. Switch connects?</p><asp:RadioButtonList ID="q14" runat="server"><asp:ListItem Value="A">Devices</asp:ListItem><asp:ListItem Value="B">Only internet</asp:ListItem><asp:ListItem Value="C">Power</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>15. Protocol is?</p><asp:RadioButtonList ID="q15" runat="server"><asp:ListItem Value="A">Rules</asp:ListItem><asp:ListItem Value="B">Hardware</asp:ListItem><asp:ListItem Value="C">Cable</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>16. Bluetooth range?</p><asp:RadioButtonList ID="q16" runat="server"><asp:ListItem Value="A">Short</asp:ListItem><asp:ListItem Value="B">Global</asp:ListItem><asp:ListItem Value="C">None</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>17. Satellite used for?</p><asp:RadioButtonList ID="q17" runat="server"><asp:ListItem Value="A">Communication</asp:ListItem><asp:ListItem Value="B">Cooking</asp:ListItem><asp:ListItem Value="C">Gaming</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>18. Bandwidth means?</p><asp:RadioButtonList ID="q18" runat="server"><asp:ListItem Value="A">Speed</asp:ListItem><asp:ListItem Value="B">Color</asp:ListItem><asp:ListItem Value="C">Power</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>19. Firewall protects?</p><asp:RadioButtonList ID="q19" runat="server"><asp:ListItem Value="A">Network</asp:ListItem><asp:ListItem Value="B">Screen</asp:ListItem><asp:ListItem Value="C">CPU</asp:ListItem></asp:RadioButtonList></div>

<div class="q"><p>20. Packet means?</p><asp:RadioButtonList ID="q20" runat="server"><asp:ListItem Value="A">Data unit</asp:ListItem><asp:ListItem Value="B">Cable</asp:ListItem><asp:ListItem Value="C">Signal tower</asp:ListItem></asp:RadioButtonList></div>

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