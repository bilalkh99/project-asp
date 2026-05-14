<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="project.AdminDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f7f6; margin: 0; }
        .topbar { background: #243b55; color: white; padding: 15px; text-align: center; font-size: 20px; }
        .container { padding: 30px; display: flex; justify-content: center; }
        .grid-box { width: 90%; background: white; padding: 20px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        .grid { width: 100%; border-collapse: collapse; margin-top: 20px; }
        .grid th { background: #243b55; color: white; padding: 12px; }
        .grid td { padding: 12px; border-bottom: 1px solid #ddd; text-align: center; }
        .btn-confirm { background: #27ae60; color: white; border: none; padding: 8px 15px; border-radius: 4px; cursor: pointer; }
        .btn-confirm:disabled { background: #bdc3c7; cursor: not-allowed; }
        .status-paid { color: #27ae60; font-weight: bold; }
        .status-pending { color: #e67e22; font-weight: bold; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="topbar">🛡️ Admin Management Panel</div>
        <div class="container">
            <div class="grid-box">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="true"></asp:Label>
                
                <asp:GridView ID="gvEnrollments" runat="server" AutoGenerateColumns="False" 
                    CssClass="grid" DataKeyNames="student_id,course_id" OnRowCommand="gvEnrollments_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="student_id" HeaderText="Student ID" />
                        <asp:BoundField DataField="course_name" HeaderText="Course Name" />
                        <asp:TemplateField HeaderText="Payment Status">
                            <ItemTemplate>
                                <span class='<%# Eval("status").ToString() == "Paid" ? "status-paid" : "status-pending" %>'>
                                    <%# Eval("status") %>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Control">
                            <ItemTemplate>
                                <asp:Button ID="btnConfirm" runat="server" Text="Confirm Payment" 
                                    CommandName="UpdateStatus" CommandArgument='<%# Container.DataItemIndex %>' 
                                    CssClass="btn-confirm" Enabled='<%# Eval("status").ToString() != "Paid" %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>