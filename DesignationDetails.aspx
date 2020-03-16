<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignationDetails.aspx.cs" Inherits="CourseworkWebApplication.DesignationDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Designation Details</title>
</head>
<body>

    <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">Home</a>
    </div>
      <ul class="nav navbar-nav">
        <li><a href="https://localhost:44380/StaffDetails.aspx">Staff Details</a></li>
        <li class="active"><a href="https://localhost:44380/DesignationDetails.aspx">Designation Details</a></li>
        <li><a href="https://localhost:44380/CustomerDetails.aspx">Customer Details</a></li>
        <li><a href="https://localhost:44380/PackageDetails.aspx">Package Details</a></li>
        <li><a href="https://localhost:44380/TourGuideDetails.aspx">Tour Guide Details</a></li>
        <li><a href="https://localhost:44380/CustomerPackageSchedule.aspx">Customer Package Schedule</a></li>
       </ul>
    </div>
    </nav>

    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DESIGNATION&quot; WHERE &quot;DESIGNATIONID&quot; = :DESIGNATIONID" InsertCommand="INSERT INTO &quot;DESIGNATION&quot; (&quot;DESIGNATIONID&quot;, &quot;DESIGNATION&quot;) VALUES (:DESIGNATIONID, :DESIGNATION)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DESIGNATION&quot;" UpdateCommand="UPDATE &quot;DESIGNATION&quot; SET &quot;DESIGNATION&quot; = :DESIGNATION WHERE &quot;DESIGNATIONID&quot; = :DESIGNATIONID">
            <DeleteParameters>
                <asp:Parameter Name="DESIGNATIONID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DESIGNATIONID" Type="Decimal" />
                <asp:Parameter Name="DESIGNATION" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DESIGNATION" Type="String" />
                <asp:Parameter Name="DESIGNATIONID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
            <asp:FormView ID="FormView2" runat="server" DataKeyNames="DESIGNATIONID" DataSourceID="SqlDataSource2" DefaultMode="Insert">
                <EditItemTemplate>
                    DESIGNATIONID:
                    <asp:Label ID="DESIGNATIONIDLabel1" runat="server" Text='<%# Eval("DESIGNATIONID") %>' />
                    <br />
                    DESIGNATION:
                    <asp:TextBox ID="DESIGNATIONTextBox" runat="server" Text='<%# Bind("DESIGNATION") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    DESIGNATIONID:
                    <asp:TextBox ID="DESIGNATIONIDTextBox" runat="server" Text='<%# Bind("DESIGNATIONID") %>' />
                    <br />
                    DESIGNATION:
                    <asp:TextBox ID="DESIGNATIONTextBox" runat="server" Text='<%# Bind("DESIGNATION") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    DESIGNATIONID:
                    <asp:Label ID="DESIGNATIONIDLabel" runat="server" Text='<%# Eval("DESIGNATIONID") %>' />
                    <br />
                    DESIGNATION:
                    <asp:Label ID="DESIGNATIONLabel" runat="server" Text='<%# Bind("DESIGNATION") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="DESIGNATIONID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="DESIGNATIONID" HeaderText="DESIGNATIONID" ReadOnly="True" SortExpression="DESIGNATIONID" />
                    <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
