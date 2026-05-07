<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="project.welcome" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>welcome dashboard</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(135deg, #eef2f7, #dfe9f3);
        }

        .topbar {
            background: #243b55;
            color: white;
            padding: 18px;
            text-align: center;
            font-size: 20px;
        }

        .welcome {
            text-align: center;
            margin-top: 20px;
            font-size: 22px;
            font-weight: bold;
        }

        .container {
            display: flex;
            justify-content: center;
            margin-top: 40px;
        }

        .grid-box {
            width: 70%;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 8px 25px rgba(0,0,0,0.1);
        }

        .grid {
            width: 100%;
            border-collapse: collapse;
        }

        .grid th {
            background: #243b55;
            color: white;
            padding: 12px;
        }

        .grid td {
            padding: 12px;
            text-align: center;
        }

        .btn {
            padding: 6px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            background: #3498db;
            color: white;
        }

        .btn:hover {
            background: #1e6fa8;
        }

        .msg {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-weight: bold;
        }

    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="topbar">
        🎓 Online Courses Platform
    </div>

    <div class="welcome">
        <asp:Label ID="lblWelcome" runat="server" Text="WELCOME 👋"></asp:Label>
    </div>

    <div class="container">

        <div class="grid-box">
           <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>


            <asp:GridView ID="gvCourses" runat="server"
                AutoGenerateColumns="False"
                CssClass="grid"
                OnRowCommand="gvCourses_RowCommand">

                <Columns>

                    <asp:BoundField DataField="course_name" HeaderText="Course" />
                    <asp:BoundField DataField="price" HeaderText="Price $" />

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>

                            <asp:Button ID="btnPay" runat="server"
                                Text="Pay"
                                CommandName="pay"
                                CommandArgument='<%# Eval("course_id") %>'
                                CssClass="btn" />

                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>


        </div>

    </div>

</form>

</body>
</html>