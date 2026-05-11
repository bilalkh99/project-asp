<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contentcreator.aspx.cs" Inherits="project.contentcreator" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Content Creator Quiz</title>

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

<h2 style="text-align:center;">🎥 Content Creator Quiz</h2>

<asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

<asp:Button ID="btnRegisterNow" runat="server"
    Text="Register Now"
    CssClass="btn"
    OnClick="regnow"
    Visible="false" />

<div class="q">
<p>1. Content creators mainly create?</p>
<asp:RadioButtonList ID="q1" runat="server">
<asp:ListItem Text="Online content" Value="A" />
<asp:ListItem Text="Buildings" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>2. YouTube is a?</p>
<asp:RadioButtonList ID="q2" runat="server">
<asp:ListItem Text="Content platform" Value="A" />
<asp:ListItem Text="Operating system" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>3. A thumbnail is used for?</p>
<asp:RadioButtonList ID="q3" runat="server">
<asp:ListItem Text="Attracting viewers" Value="A" />
<asp:ListItem Text="Deleting videos" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>4. Good lighting improves?</p>
<asp:RadioButtonList ID="q4" runat="server">
<asp:ListItem Text="Video quality" Value="A" />
<asp:ListItem Text="Internet speed" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>5. Engagement means?</p>
<asp:RadioButtonList ID="q5" runat="server">
<asp:ListItem Text="Likes and comments" Value="A" />
<asp:ListItem Text="Computer repair" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>6. Content planning helps?</p>
<asp:RadioButtonList ID="q6" runat="server">
<asp:ListItem Text="Consistency" Value="A" />
<asp:ListItem Text="Breaking computers" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>7. Editing improves?</p>
<asp:RadioButtonList ID="q7" runat="server">
<asp:ListItem Text="Content quality" Value="A" />
<asp:ListItem Text="Battery life" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>8. Social media creators use?</p>
<asp:RadioButtonList ID="q8" runat="server">
<asp:ListItem Text="Instagram and TikTok" Value="A" />
<asp:ListItem Text="Printers only" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>9. Viral content spreads?</p>
<asp:RadioButtonList ID="q9" runat="server">
<asp:ListItem Text="Quickly online" Value="A" />
<asp:ListItem Text="Inside hardware" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>10. A creator should have?</p>
<asp:RadioButtonList ID="q10" runat="server">
<asp:ListItem Text="Creativity and communication" Value="A" />
<asp:ListItem Text="Only coding skills" Value="B" />
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