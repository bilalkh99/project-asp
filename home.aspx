<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="home.aspx.cs"
    Inherits="project.WebForm3" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Career Simulator</title>

<style>
body {
    margin: 0;
    font-family: 'Segoe UI';
    background: #0f172a;
    color: white;
}

h1 {
    text-align: center;
    margin-top: 30px;
}

.container {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 20px;
    margin-top: 40px;
}

.card {
    width: 220px;
    background: #111827;
    border-radius: 15px;
    padding: 20px;
    text-align: center;
    box-shadow: 0 10px 25px rgba(0,0,0,0.4);
}

/* 🔥 round images */
.card img {
    width: 90px;
    height: 90px;
    border-radius: 50%;
    object-fit: cover;
    border: 3px solid #3b82f6;
    margin-bottom: 10px;
}

.btn {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    border: none;
    border-radius: 10px;
    background: #3b82f6;
    color: white;
    cursor: pointer;
}

.btn:hover {
    background: #2563eb;
}

.input {
    width: 150px;
    padding: 12px;
    border-radius: 10px;
    border: 1px solid #2d3748;
    background: #1f2937;
    color: white;
}
</style>

</head>

<body>

<form id="form1" runat="server">

<h1>Select Your Career</h1>

<div class="container">

    <!-- 💻 Computer Science -->
    <div class="card">
        <img src="image/developer.jpg" />
        <h3>Computer Science</h3>

        <asp:DropDownList ID="ddlcs" runat="server" CssClass="input">
            <asp:ListItem Text="-- Choose Field --" Value="" />
            <asp:ListItem Text="Software Development" Value="Developer" />
            <asp:ListItem Text="Cyber Security" Value="Cyber" />
            <asp:ListItem Text="AI / Machine Learning" Value="AI" />
            <asp:ListItem Text="Web Development" Value="Web" />
            <asp:ListItem Text="Mobile Development" Value="Mobile" />
        </asp:DropDownList>

        <asp:Button ID="btncs" runat="server"
            Text="Select"
            CssClass="btn"
            OnClick="btncs_Click" />
    </div>

    <!-- 💡 Computer Engineering -->
    <div class="card">
        <img src="image/engineer.jpg" />
        <h3>C Engineering</h3>

        <asp:DropDownList ID="ddlEng" runat="server" CssClass="input">
            <asp:ListItem Text="-- Choose Field --" Value="" />
            <asp:ListItem Text="Computer Engineering" Value="CE" />
            <asp:ListItem Text="Electrical Engineering" Value="EE" />
            <asp:ListItem Text="Civil Engineering" Value="Civil" />
            <asp:ListItem Text="Telecommunication" Value="Telecom" />
        </asp:DropDownList>

        <asp:Button ID="btnEng" runat="server"
            Text="Select"
            CssClass="btn"
            OnClick="btnEng_Click" />
    </div>

    <!-- 🎨 Freelancer -->
    <div class="card">
        <img src="image/freelancer.jpg" />
        <h3>Freelancer</h3>

        <asp:DropDownList ID="ddlFree" runat="server" CssClass="input">
            <asp:ListItem Text="-- Choose Field --" Value="" />
            <asp:ListItem Text="Graphic Design" Value="Design" />
            <asp:ListItem Text="Video Editing" Value="Video" />
            <asp:ListItem Text="Digital Marketing" Value="Marketing" />
        </asp:DropDownList>

        <asp:Button ID="btnFree" runat="server"
            Text="Select"
            CssClass="btn"
            OnClick="btnFree_Click" />
    </div>

</div>

</form>

</body>
</html>