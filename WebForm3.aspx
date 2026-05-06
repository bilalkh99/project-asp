<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm3.aspx.cs"
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
        transition: 0.3s;
    }

    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 30px rgba(59,130,246,0.4);
    }

    .card img {
        width: 80px;
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
    padding: 12px 14px;

    border-radius: 10px;
    border: 1px solid #2d3748;

    background: #1f2937;
    color: white;

    font-size: 15px;
    outline: none;

    transition: 0.3s;

    appearance: none;
    cursor: pointer;
}

.input:focus {
    border-color: #3b82f6;
    box-shadow: 0 0 10px #3b82f6;
}

.input:hover {
    border-color: #60a5fa;
}

.input {
    background-image: url("https://cdn-icons-png.flaticon.com/512/32/32195.png");
    background-repeat: no-repeat;
    background-position: right 12px center;
    background-size: 12px;
}
</style>

</head>

<body>

<form id="form1" runat="server">

<h1>Select Your Career</h1>

<div class="container">

    <div class="card">
       <img src="image/developer.jpg" width="80" />
        <h3>computer sceine</h3>
        <asp:DropDownList ID="ddlcs" runat="server" CssClass="input">
    <asp:ListItem Text="-- Choose Field --" Value="" />

    <asp:ListItem Text="Software Development " Value="Developer" />
    <asp:ListItem Text="Cyber Security " Value="Cyber" />
    <asp:ListItem Text="Data Science " Value="Data" />
    <asp:ListItem Text="AI / Machine Learning " Value="AI" />
    <asp:ListItem Text="Web Development " Value="Web" />
    <asp:ListItem Text="Mobile Development " Value="Mobile" />
    <asp:ListItem Text="Game Development " Value="Game" />
</asp:DropDownList>

<br /><br />
        <asp:Button ID="btnDev" runat="server"
            Text="Select"
            CssClass="btn"
            OnClick="btncs_Click" />
    </div>

    <div class="card">
        <img src="image/engineer.jpg" width="80" />
        <h3>Engineer</h3>

<asp:DropDownList ID="ddlEng" runat="server" CssClass="input" AutoPostBack="true">
    
    <asp:ListItem Text="-- Choose Field --" Value="" />

    <asp:ListItem Text="Computer Engineering " Value="CE" />
    <asp:ListItem Text="Electrical Engineering " Value="EE" />
    <asp:ListItem Text="Mechanical Engineering " Value="ME" />
    <asp:ListItem Text="Civil Engineering " Value="Civil" />
    <asp:ListItem Text="Telecommunication " Value="Telecom" />
    <asp:ListItem Text="Industrial Engineering " Value="IE" />

</asp:DropDownList>

<br /><br />

        <asp:Button ID="btnEng" runat="server"
            Text="Select"
            CssClass="btn"
            OnClick="btnEng_Click" />
    </div>

    <div class="card">
        <img src="image/doctor.jpg" width="80" />
        <h3>Doctor</h3>

<asp:DropDownList ID="ddlDoctor" runat="server" CssClass="input">
    
    <asp:ListItem Text="-- Choose Field --" Value="" />

    <asp:ListItem Text="General Medicine " Value="General" />
    <asp:ListItem Text="Cardiology " Value="Cardio" />
    <asp:ListItem Text="Neurology " Value="Neuro" />
    <asp:ListItem Text="Pediatrics " Value="Pediatrics" />
    <asp:ListItem Text="Surgery " Value="Surgery" />
    <asp:ListItem Text="Dermatology " Value="Skin" />
    <asp:ListItem Text="Radiology " Value="Radio" />
    <asp:ListItem Text="Psychiatry " Value="Psych" />

</asp:DropDownList>

<br /><br />
        <asp:Button ID="btnDoc" runat="server"
            Text="Select"
            CssClass="btn"
            OnClick="btnDoc_Click" />
    </div>

    <div class="card">
        <img src="image/freelancer.jpg" width="80" />
        <h3>Freelancer</h3>

<asp:DropDownList ID="ddlFree" runat="server" CssClass="input">
    
    <asp:ListItem Text="-- Choose Field --" Value="" />

    <asp:ListItem Text="Web Development " Value="Web" />
    <asp:ListItem Text="Graphic Design " Value="Design" />
    <asp:ListItem Text="Content Writing " Value="Writing" />
    <asp:ListItem Text="Video Editing " Value="Video" />
    <asp:ListItem Text="Digital Marketing " Value="Marketing" />
    <asp:ListItem Text="Mobile Apps " Value="Mobile" />

</asp:DropDownList>

<br /><br />


        <asp:Button ID="btnFree" runat="server"
            Text="Select"
            CssClass="btn"
            OnClick="btnFree_Click" />
    </div>

</div>

</form>

</body>
</html>