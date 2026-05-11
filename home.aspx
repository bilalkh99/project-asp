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
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #0f172a, #111827);
    color: white;
}

/* العنوان */
h1 {
    text-align: center;
    margin-top: 30px;
    font-size: 32px;
    letter-spacing: 1px;
}

/* container */
.container {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 25px;
    margin-top: 50px;
}

/* card */
.card {
    width: 240px;
    background: rgba(17, 24, 39, 0.9);
    border-radius: 18px;
    padding: 25px;
    text-align: center;
    box-shadow: 0 10px 30px rgba(0,0,0,0.5);
    transition: 0.3s;
    backdrop-filter: blur(6px);
}

.card:hover {
    transform: translateY(-8px);
}

/* image */
.card img {
    width: 95px;
    height: 95px;
    border-radius: 50%;
    object-fit: cover;
    border: 3px solid #3b82f6;
    margin-bottom: 10px;
}

/* normal button */
.btn {
    width: 100%;
    padding: 10px;
    margin-top: 12px;
    border: none;
    border-radius: 12px;
    background: #3b82f6;
    color: white;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s;
}

.btn:hover {
    background: #2563eb;
    transform: scale(1.03);
}

/* dropdown */
.input {
    width: 100%;
    padding: 10px;
    border-radius: 10px;
    border: 1px solid #374151;
    background: #1f2937;
    color: white;
    margin-top: 10px;
}

/* 🔥 special teacher button */
.teacher-btn {
    display: block;
    margin: 60px auto 30px auto;
    padding: 14px 25px;
    width: 60%;
    max-width: 500px;

    background: linear-gradient(90deg, #f59e0b, #ef4444);
    border: none;
    border-radius: 14px;

    color: white;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;

    box-shadow: 0 10px 25px rgba(0,0,0,0.4);
    transition: 0.3s;
}

.teacher-btn:hover {
    transform: scale(1.05);
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
           <asp:ListItem Text="Content Creator" Value="Content" />
        </asp:DropDownList>

        <asp:Button ID="btnFree" runat="server"
            Text="Select"
            CssClass="btn"
            OnClick="btnFree_Click" />
    </div>

</div>
    
        <asp:Button ID="btntech" runat="server"
            Text="If you are a teacher and would like to join our team, click here"
            CssClass="teacher-btn"
            OnClick="btntech_Click" />
</form>

</body>
</html>