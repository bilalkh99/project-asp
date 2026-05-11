<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Videoeditor.aspx.cs" Inherits="project.Videoeditor" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Video Editing Quiz</title>

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

<h2 style="text-align:center;">🎬 Video Editing Quiz</h2>

<asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>

<asp:Button ID="btnRegisterNow" runat="server"
    Text="Register Now"
    CssClass="btn"
    OnClick="regnow"
    Visible="false" />

<div class="q">
<p>1. Premiere Pro is used for?</p>
<asp:RadioButtonList ID="q1" runat="server">
<asp:ListItem Text="Video editing" Value="A" />
<asp:ListItem Text="Gaming" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>2. Timeline is used to?</p>
<asp:RadioButtonList ID="q2" runat="server">
<asp:ListItem Text="Arrange clips" Value="A" />
<asp:ListItem Text="Delete computer" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>3. Cutting means?</p>
<asp:RadioButtonList ID="q3" runat="server">
<asp:ListItem Text="Removing parts of a clip" Value="A" />
<asp:ListItem Text="Painting" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>4. Transition is used between?</p>
<asp:RadioButtonList ID="q4" runat="server">
<asp:ListItem Text="Two clips" Value="A" />
<asp:ListItem Text="Speakers" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>5. Color grading improves?</p>
<asp:RadioButtonList ID="q5" runat="server">
<asp:ListItem Text="Video look" Value="A" />
<asp:ListItem Text="Internet speed" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>6. Audio editing means?</p>
<asp:RadioButtonList ID="q6" runat="server">
<asp:ListItem Text="Adjusting sound" Value="A" />
<asp:ListItem Text="Building apps" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>7. Export means?</p>
<asp:RadioButtonList ID="q7" runat="server">
<asp:ListItem Text="Saving final video" Value="A" />
<asp:ListItem Text="Deleting project" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>8. Frame rate is measured in?</p>
<asp:RadioButtonList ID="q8" runat="server">
<asp:ListItem Text="FPS" Value="A" />
<asp:ListItem Text="MP3" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>9. B-roll is?</p>
<asp:RadioButtonList ID="q9" runat="server">
<asp:ListItem Text="Extra supporting footage" Value="A" />
<asp:ListItem Text="Main actor" Value="B" />
</asp:RadioButtonList>
</div>

<div class="q">
<p>10. Subtitle is used for?</p>
<asp:RadioButtonList ID="q10" runat="server">
<asp:ListItem Text="Showing spoken text" Value="A" />
<asp:ListItem Text="Adding hardware" Value="B" />
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