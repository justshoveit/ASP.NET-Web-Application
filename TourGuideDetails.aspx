<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourGuideDetails.aspx.cs" Inherits="CourseworkWebApplication.TourGuideDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>TourGuideDetails</title>
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
        <li><a href="https://localhost:44380/CustomerDetails.aspx">Customer Details</a></li>
        <li><a href="https://localhost:44380/PackageDetails.aspx">Package Details</a></li>
        <li class="active"><a href="https://localhost:44380/TourGuideDetails.aspx">Tour Guide Details</a></li>
        <li><a href="https://localhost:44380/CustomerPackageSchedule.aspx">Customer Package Schedule</a></li>
       </ul>
    </div>
    </nav>

    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TOURGUIDE&quot; WHERE &quot;STAFFID&quot; = :STAFFID" InsertCommand="INSERT INTO &quot;TOURGUIDE&quot; (&quot;STAFFID&quot;, &quot;EXPERIENCE&quot;, &quot;PACKAGEID&quot;) VALUES (:STAFFID, :EXPERIENCE, :PACKAGEID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT STAFF.STAFFNAME, STAFF.PHONENUMBER, TOURGUIDE.EXPERIENCE, STAFF.ADDRESS, TOURGUIDE.STAFFID, &quot;PACKAGE&quot;.PACKAGEID, &quot;PACKAGE&quot;.PACKAGENAME FROM STAFF, TOURGUIDE, &quot;PACKAGE&quot; WHERE STAFF.STAFFID = TOURGUIDE.STAFFID AND TOURGUIDE.PACKAGEID = &quot;PACKAGE&quot;.&quot;PACKAGEID&quot;" UpdateCommand="UPDATE &quot;TOURGUIDE&quot; SET &quot;EXPERIENCE&quot; = :EXPERIENCE, &quot;PACKAGEID&quot; = :PACKAGEID WHERE &quot;STAFFID&quot; = :STAFFID">
            <DeleteParameters>
                <asp:Parameter Name="STAFFID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STAFFID" Type="Decimal" />
                <asp:Parameter Name="EXPERIENCE" Type="Decimal" />
                <asp:Parameter Name="PACKAGEID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EXPERIENCE" Type="Decimal" />
                <asp:Parameter Name="PACKAGEID" Type="String" />
                <asp:Parameter Name="STAFFID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="STAFFID,PACKAGEID" DataSourceID="SqlDataSource2" DefaultMode="Insert">
            <EditItemTemplate>
                STAFFNAME:
                <asp:TextBox ID="STAFFNAMETextBox" runat="server" Text='<%# Bind("STAFFNAME") %>' />
                <br />
                PHONENUMBER:
                <asp:TextBox ID="PHONENUMBERTextBox" runat="server" Text='<%# Bind("PHONENUMBER") %>' />
                <br />
                EXPERIENCE:
                <asp:TextBox ID="EXPERIENCETextBox" runat="server" Text='<%# Bind("EXPERIENCE") %>' />
                <br />
                ADDRESS:
                <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                <br />
                STAFFID:
                <asp:Label ID="STAFFIDLabel1" runat="server" Text='<%# Eval("STAFFID") %>' />
                <br />
                PACKAGEID:
                <asp:Label ID="PACKAGEIDLabel1" runat="server" Text='<%# Eval("PACKAGEID") %>' />
                <br />
                PACKAGENAME:
                <asp:TextBox ID="PACKAGENAMETextBox" runat="server" Text='<%# Bind("PACKAGENAME") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                STAFFNAME:
                <asp:TextBox ID="STAFFNAMETextBox" runat="server" Text='<%# Bind("STAFFNAME") %>' />
                <br />
                PHONENUMBER:
                <asp:TextBox ID="PHONENUMBERTextBox" runat="server" Text='<%# Bind("PHONENUMBER") %>' />
                <br />
                EXPERIENCE:
                <asp:TextBox ID="EXPERIENCETextBox" runat="server" Text='<%# Bind("EXPERIENCE") %>' />
                <br />
                ADDRESS:
                <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                <br />
                STAFFID:
                <asp:TextBox ID="STAFFIDTextBox" runat="server" Text='<%# Bind("STAFFID") %>' />
                <br />
                PACKAGEID:
                <asp:TextBox ID="PACKAGEIDTextBox" runat="server" Text='<%# Bind("PACKAGEID") %>' />
                <br />
                PACKAGENAME:
                <asp:TextBox ID="PACKAGENAMETextBox" runat="server" Text='<%# Bind("PACKAGENAME") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                STAFFNAME:
                <asp:Label ID="STAFFNAMELabel" runat="server" Text='<%# Bind("STAFFNAME") %>' />
                <br />
                PHONENUMBER:
                <asp:Label ID="PHONENUMBERLabel" runat="server" Text='<%# Bind("PHONENUMBER") %>' />
                <br />
                EXPERIENCE:
                <asp:Label ID="EXPERIENCELabel" runat="server" Text='<%# Bind("EXPERIENCE") %>' />
                <br />
                ADDRESS:
                <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
                <br />
                STAFFID:
                <asp:Label ID="STAFFIDLabel" runat="server" Text='<%# Eval("STAFFID") %>' />
                <br />
                PACKAGEID:
                <asp:Label ID="PACKAGEIDLabel" runat="server" Text='<%# Eval("PACKAGEID") %>' />
                <br />
                PACKAGENAME:
                <asp:Label ID="PACKAGENAMELabel" runat="server" Text='<%# Bind("PACKAGENAME") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="STAFFID,PACKAGEID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="STAFFNAME" HeaderText="STAFFNAME" SortExpression="STAFFNAME" />
                <asp:BoundField DataField="PHONENUMBER" HeaderText="PHONENUMBER" SortExpression="PHONENUMBER" />
                <asp:BoundField DataField="EXPERIENCE" HeaderText="EXPERIENCE" SortExpression="EXPERIENCE" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:BoundField DataField="STAFFID" HeaderText="STAFFID" ReadOnly="True" SortExpression="STAFFID" />
                <asp:BoundField DataField="PACKAGEID" HeaderText="PACKAGEID" ReadOnly="True" SortExpression="PACKAGEID" />
                <asp:BoundField DataField="PACKAGENAME" HeaderText="PACKAGENAME" SortExpression="PACKAGENAME" />
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
        <div>
        </div>
    </form>
</body>
</html>
