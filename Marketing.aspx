<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marketing.aspx.cs" Inherits="project.Marketing" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Digital Marketing Quiz</title>

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

<h2 style="text-align:center;">📈 Digital Marketing Quiz</h2>

<asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

<asp:Button ID="btnRegisterNow" runat="server"
    Text="Register Now"
    CssClass="btn"
    OnClick="regnow"
    Visible="false" />

<div class="q">
<p>1. SEO stands for?</p>
<asp:RadioButtonList ID="q1" runat="server">
<asp:ListItem Text="Search Engine Optimization" Value="A" />
<asp:ListItem Text="Social Email Option" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>2. Social media marketing uses?</p>
<asp:RadioButtonList ID="q2" runat="server">
<asp:ListItem Text="Instagram and Facebook" Value="A" />
<asp:ListItem Text="Printers only" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>3. Content marketing means?</p>
<asp:RadioButtonList ID="q3" runat="server">
<asp:ListItem Text="Creating useful content" Value="A" />
<asp:ListItem Text="Deleting ads" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>4. Email marketing is used for?</p>
<asp:RadioButtonList ID="q4" runat="server">
<asp:ListItem Text="Communicating with customers" Value="A" />
<asp:ListItem Text="Gaming" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>5. Google Ads are?</p>
<asp:RadioButtonList ID="q5" runat="server">
<asp:ListItem Text="Online advertisements" Value="A" />
<asp:ListItem Text="Video games" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>6. Branding helps?</p>
<asp:RadioButtonList ID="q6" runat="server">
<asp:ListItem Text="Build company identity" Value="A" />
<asp:ListItem Text="Format hard disk" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>7. Influencer marketing uses?</p>
<asp:RadioButtonList ID="q7" runat="server">
<asp:ListItem Text="Popular creators" Value="A" />
<asp:ListItem Text="Computer drivers" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>8. Analytics are used to?</p>
<asp:RadioButtonList ID="q8" runat="server">
<asp:ListItem Text="Track performance" Value="A" />
<asp:ListItem Text="Cook food" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>9. A target audience is?</p>
<asp:RadioButtonList ID="q9" runat="server">
<asp:ListItem Text="Specific customers" Value="A" />
<asp:ListItem Text="Random people" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>10. Digital marketing mainly happens?</p>
<asp:RadioButtonList ID="q10" runat="server">
<asp:ListItem Text="Online" Value="A" />
<asp:ListItem Text="Underwater" Value="B" />
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