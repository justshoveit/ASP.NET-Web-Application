<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="CourseworkWebApplication.CustomerDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Customer Details</title>
</head>
<body>

    <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">Home</a>
    </div>
      <ul class="nav navbar-nav">
        <li><a href="https://localhost:44380/StaffDetails.aspx">Staff Details</a></li>
        <li><a href="https://localhost:44380/DesignationDetails.aspx">Designation Details</a></li>
        <li class="active"><a href="https://localhost:44380/CustomerDetails.aspx">Customer Details</a></li>
        <li><a href="https://localhost:44380/PackageDetails.aspx">Package Details</a></li>
        <li><a href="https://localhost:44380/TourGuideDetails.aspx">Tour Guide Details</a></li>
        <li><a href="https://localhost:44380/CustomerPackageSchedule.aspx">Customer Package Schedule</a></li>
       </ul>
    </div>
    </nav>

    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUSTOMERID&quot;, &quot;FULLNAME&quot;, &quot;ADDRESS&quot;, &quot;CONTACT&quot;) VALUES (:CUSTOMERID, :FULLNAME, :ADDRESS, :CONTACT)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;FULLNAME&quot; = :FULLNAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;CONTACT&quot; = :CONTACT WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID">
                <DeleteParameters>
                    <asp:Parameter Name="CUSTOMERID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CUSTOMERID" Type="Decimal" />
                    <asp:Parameter Name="FULLNAME" Type="String" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FULLNAME" Type="String" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="Decimal" />
                    <asp:Parameter Name="CUSTOMERID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="CUSTOMERID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
                    CUSTOMERID:
                    <asp:Label ID="CUSTOMERIDLabel1" runat="server" Text='<%# Eval("CUSTOMERID") %>' />
                    <br />
                    FULLNAME:
                    <asp:TextBox ID="FULLNAMETextBox" runat="server" Text='<%# Bind("FULLNAME") %>' />
                    <br />
                    ADDRESS:
                    <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                    CONTACT:
                    <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    CUSTOMERID:
                    <asp:TextBox ID="CUSTOMERIDTextBox" runat="server" Text='<%# Bind("CUSTOMERID") %>' />
                    <br />
                    FULLNAME:
                    <asp:TextBox ID="FULLNAMETextBox" runat="server" Text='<%# Bind("FULLNAME") %>' />
                    <br />
                    ADDRESS:
                    <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                    CONTACT:
                    <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CUSTOMERID:
                    <asp:Label ID="CUSTOMERIDLabel" runat="server" Text='<%# Eval("CUSTOMERID") %>' />
                    <br />
                    FULLNAME:
                    <asp:Label ID="FULLNAMELabel" runat="server" Text='<%# Bind("FULLNAME") %>' />
                    <br />
                    ADDRESS:
                    <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                    CONTACT:
                    <asp:Label ID="CONTACTLabel" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CUSTOMERID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" ReadOnly="True" SortExpression="CUSTOMERID" />
                    <asp:BoundField DataField="FULLNAME" HeaderText="FULLNAME" SortExpression="FULLNAME" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
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
