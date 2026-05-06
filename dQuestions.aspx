<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="dQuestions.aspx.cs"
    Inherits="project.dQuestions" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Developer Questions</title>

<style>
body{
    font-family:Segoe UI;
    background:#0f172a;
    color:white;
    text-align:center;
}

.box{
    margin-top:40px;
}

.q{
    margin:20px auto;
    padding:15px;
    width:60%;
    background:#111827;
    border-radius:12px;
    text-align:left;
}

.btn{
    padding:10px 20px;
    background:#3b82f6;
    color:white;
    border:none;
    border-radius:10px;
    cursor:pointer;
}
</style>

</head>

<body>

<form id="form1" runat="server">

<div class="box">

<h2>👨‍💻 Developer Test</h2>

<div class="q">
<p>1) When you face a bug, you:</p>
<asp:RadioButtonList ID="q1" runat="server">
    <asp:ListItem Text="Give up" Value="A"></asp:ListItem>
    <asp:ListItem Text="Search & fix step by step" Value="B"></asp:ListItem>
    <asp:ListItem Text="Ask someone immediately" Value="C"></asp:ListItem>
    <asp:ListItem Text="Ignore it" Value="D"></asp:ListItem>
</asp:RadioButtonList>
</div>

<div class="q">
<p>2) You enjoy:</p>
<asp:RadioButtonList ID="q2" runat="server">
    <asp:ListItem Text="Building apps 👨‍💻" Value="A"></asp:ListItem>
    <asp:ListItem Text="Designing only 🎨" Value="B"></asp:ListItem>
    <asp:ListItem Text="Talking to people" Value="C"></asp:ListItem>
    <asp:ListItem Text="No computer work" Value="D"></asp:ListItem>
</asp:RadioButtonList>
</div>

<div class="q">
<p>3) Learning programming:</p>
<asp:RadioButtonList ID="q3" runat="server">
    <asp:ListItem Text="Love it 🔥" Value="A"></asp:ListItem>
    <asp:ListItem Text="Okay" Value="B"></asp:ListItem>
    <asp:ListItem Text="Hard" Value="C"></asp:ListItem>
    <asp:ListItem Text="Don’t like it" Value="D"></asp:ListItem>
</asp:RadioButtonList>
</div>

<asp:Button ID="btnResult" runat="server"
    Text="Get Result"
    CssClass="btn"
    OnClick="btnResult_Click" />

<br /><br />

<asp:Label ID="lblResult" runat="server" />

</div>

</form>

</body>
</html>