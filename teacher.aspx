<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="project.teacher" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Teacher Registration</title>

<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #e0f2fe, #f8fafc);
    color: #0f172a;
}

/* form container */
.form-box {
    width: 480px;
    margin: 50px auto;
    padding: 35px;
    background: rgba(255,255,255,0.95);
    border-radius: 22px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.12);
}

/* title */
h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #1e3a8a;
    font-size: 26px;
}

input, textarea, select {
    width: 100%;
    padding: 12px;
    margin-top: 8px;
    margin-bottom: 15px;
    border-radius: 12px;
    border: 1px solid #d1d5db;
    background: #f9fafb;
    font-size: 14px;
    transition: 0.3s;
}

input:focus, textarea:focus, select:focus {
    border-color: #3b82f6;
    box-shadow: 0 0 10px rgba(59,130,246,0.25);
    outline: none;
}

select {
    cursor: pointer;
}

.file-box {
    margin-bottom: 15px;
    padding: 12px;
    border: 2px dashed #93c5fd;
    border-radius: 14px;
    background: #f0f9ff;
    text-align: center;
}

.file-box:hover {
    border-color: #3b82f6;
    background: #e0f2fe;
}

.file-label {
    display: block;
    font-weight: bold;
    margin-bottom: 8px;
    color: #1e3a8a;
}

.btn {
    width: 100%;
    padding: 13px;
    border: none;
    border-radius: 14px;
    background: linear-gradient(90deg, #3b82f6, #6366f1);
    color: white;
    font-weight: bold;
    font-size: 15px;
    cursor: pointer;
    transition: 0.3s;
}

.btn:hover {
    transform: scale(1.03);
    box-shadow: 0 10px 25px rgba(59,130,246,0.3);
}

#lblResult {
    display: block;
    text-align: center;
    font-weight: bold;
    margin-top: 10px;
}
</style>

</head>

<body>
<form id="form1" runat="server">

<div class="form-box">

    <h2>Teacher Registration</h2>

    <asp:TextBox ID="txtName" runat="server" placeholder="Full Name"></asp:TextBox>
    <asp:TextBox ID="txtFamily" runat="server" placeholder="Family Name"></asp:TextBox>
    <asp:TextBox ID="txtAge" runat="server" placeholder="Age"></asp:TextBox>

    <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone"></asp:TextBox>
    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
    <asp:TextBox ID="txtAddress" runat="server" placeholder="Address"></asp:TextBox>
    <asp:TextBox ID="txtDegree" runat="server" placeholder="Degree / Certificate"></asp:TextBox>

    <asp:DropDownList ID="ddlSubject" runat="server">
        <asp:ListItem Text="-- Choose Subject --" Value="" />
        <asp:ListItem Text="Maths" Value="Maths" />
        <asp:ListItem Text="Physics" Value="Physics" />
        <asp:ListItem Text="Programming" Value="Programming" />
        <asp:ListItem Text="Graphic Design" Value="Design" />
        <asp:ListItem Text="Arts" Value="Arts" />
        <asp:ListItem Text="Technical" Value="Technical" />
        <asp:ListItem Text="Others" Value="Others" />
    </asp:DropDownList>

    <asp:TextBox ID="txtExperience" runat="server"
        TextMode="MultiLine"
        Rows="4"
        placeholder="Experience"></asp:TextBox>

    <div class="file-box">
        <label class="file-label">📎 Upload CV</label>
        <asp:FileUpload ID="fileCV" runat="server" />
    </div>

    <asp:Button ID="btnSubmit" runat="server"
        Text="Submit Application"
        CssClass="btn"
        OnClick="btnSubmit_Click" />

    <br />

    <asp:Label ID="lblResult" runat="server" ForeColor="#15803d" />

</div>

</form>
</body>
</html>