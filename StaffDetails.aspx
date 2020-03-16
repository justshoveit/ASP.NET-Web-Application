<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffDetails.aspx.cs" Inherits="CourseworkWebApplication.StaffDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Staff Details</title>
    
</head>
<body>
    <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">Home</a>
    </div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="https://localhost:44380/StaffDetails.aspx">Staff Details</a></li>
        <li><a href="https://localhost:44380/DesignationDetails.aspx">Designation Details</a></li>
        <li><a href="https://localhost:44380/CustomerDetails.aspx">Customer Details</a></li>
        <li><a href="https://localhost:44380/PackageDetails.aspx">Package Details</a></li>
        <li><a href="https://localhost:44380/TourGuideDetails.aspx">Tour Guide Details</a></li>
        <li><a href="https://localhost:44380/CustomerPackageSchedule.aspx">Customer Package Schedule</a></li>
       </ul>
    </div>
    </nav>

    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFFID&quot; = :STAFFID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFFID&quot;, &quot;STAFFNAME&quot;, &quot;ADDRESS&quot;, &quot;PHONENUMBER&quot;, &quot;DESIGNATION_&quot;) VALUES (:STAFFID, :STAFFNAME, :ADDRESS, :PHONENUMBER, :DESIGNATION_)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF&quot;" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;STAFFNAME&quot; = :STAFFNAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;PHONENUMBER&quot; = :PHONENUMBER, &quot;DESIGNATION_&quot; = :DESIGNATION_ WHERE &quot;STAFFID&quot; = :STAFFID">
                <DeleteParameters>
                    <asp:Parameter Name="STAFFID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STAFFID" Type="Decimal" />
                    <asp:Parameter Name="STAFFNAME" Type="String" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="PHONENUMBER" Type="Decimal" />
                    <asp:Parameter Name="DESIGNATION_" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="STAFFNAME" Type="String" />
                    <asp:Parameter Name="ADDRESS" Type="String" />
                    <asp:Parameter Name="PHONENUMBER" Type="Decimal" />
                    <asp:Parameter Name="DESIGNATION_" Type="Decimal" />
                    <asp:Parameter Name="STAFFID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STAFFID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
                    STAFFID:
                    <asp:Label ID="STAFFIDLabel1" runat="server" Text='<%# Eval("STAFFID") %>' />
                    <br />
                    STAFFNAME:
                    <asp:TextBox ID="STAFFNAMETextBox" runat="server" Text='<%# Bind("STAFFNAME") %>' />
                    <br />
                    ADDRESS:
                    <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                    PHONENUMBER:
                    <asp:TextBox ID="PHONENUMBERTextBox" runat="server" Text='<%# Bind("PHONENUMBER") %>' />
                    <br />
                    DESIGNATION_:
                    <asp:TextBox ID="DESIGNATION_TextBox" runat="server" Text='<%# Bind("DESIGNATION_") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    STAFFID:
                    <asp:TextBox ID="STAFFIDTextBox" runat="server" Text='<%# Bind("STAFFID") %>' />
                    <br />
                    STAFFNAME:
                    <asp:TextBox ID="STAFFNAMETextBox" runat="server" Text='<%# Bind("STAFFNAME") %>' />
                    <br />
                    ADDRESS:
                    <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                    PHONENUMBER:
                    <asp:TextBox ID="PHONENUMBERTextBox" runat="server" Text='<%# Bind("PHONENUMBER") %>' />
                    <br />
                    DESIGNATION_:
                    <asp:TextBox ID="DESIGNATION_TextBox" runat="server" Text='<%# Bind("DESIGNATION_") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    STAFFID:
                    <asp:Label ID="STAFFIDLabel" runat="server" Text='<%# Eval("STAFFID") %>' />
                    <br />
                    STAFFNAME:
                    <asp:Label ID="STAFFNAMELabel" runat="server" Text='<%# Bind("STAFFNAME") %>' />
                    <br />
                    ADDRESS:
                    <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
                    <br />
                    PHONENUMBER:
                    <asp:Label ID="PHONENUMBERLabel" runat="server" Text='<%# Bind("PHONENUMBER") %>' />
                    <br />
                    DESIGNATION_:
                    <asp:Label ID="DESIGNATION_Label" runat="server" Text='<%# Bind("DESIGNATION_") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="STAFFID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="STAFFID" HeaderText="STAFFID" ReadOnly="True" SortExpression="STAFFID" />
                    <asp:BoundField DataField="STAFFNAME" HeaderText="STAFFNAME" SortExpression="STAFFNAME" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="PHONENUMBER" HeaderText="PHONENUMBER" SortExpression="PHONENUMBER" />
                    <asp:BoundField DataField="DESIGNATION_" HeaderText="DESIGNATION_" SortExpression="DESIGNATION_" />
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
