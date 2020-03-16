<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerPackageSchedule.aspx.cs" Inherits="CourseworkWebApplication.ComplexForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Customer Package Schedule Form</title>
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
        <li><a href="https://localhost:44380/TourGuideDetails.aspx">Tour Guide Details</a></li>
        <li class="active"><a href="https://localhost:44380/CustomerPackageSchedule.aspx">Customer Package Schedule</a></li>
       </ul>
    </div>
    </nav>

    <form id="form1" runat="server">
        <div style="margin-left: 40px">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PACKAGENAME" DataValueField="PACKAGEID" AutoPostBack="True">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Go" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CUSTOMERID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" ReadOnly="True" SortExpression="CUSTOMERID" />
                    <asp:BoundField DataField="PACKAGEID" HeaderText="PACKAGEID" SortExpression="PACKAGEID" />
                    <asp:BoundField DataField="FULLNAME" HeaderText="FULLNAME" SortExpression="FULLNAME" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                    <asp:BoundField DataField="PACKAGENAME" HeaderText="PACKAGENAME" SortExpression="PACKAGENAME" />
                    <asp:BoundField DataField="TOTALDAYS" HeaderText="TOTALDAYS" SortExpression="TOTALDAYS" />
                    <asp:BoundField DataField="DIFFICULTY" HeaderText="DIFFICULTY" SortExpression="DIFFICULTY" />
                    <asp:BoundField DataField="STARTDATE" HeaderText="STARTDATE" SortExpression="STARTDATE" />
                    <asp:BoundField DataField="ENDDATE" HeaderText="ENDDATE" SortExpression="ENDDATE" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CUSTOMERPACKAGE.CUSTOMERID, CUSTOMERPACKAGE.PACKAGEID, CUSTOMER.FULLNAME, CUSTOMER.ADDRESS, CUSTOMER.CONTACT, &quot;PACKAGE&quot;.PACKAGENAME, &quot;PACKAGE&quot;.TOTALDAYS, &quot;PACKAGE&quot;.DIFFICULTY, &quot;PACKAGE&quot;.STARTDATE, &quot;PACKAGE&quot;.ENDDATE FROM CUSTOMERPACKAGE, CUSTOMER, &quot;PACKAGE&quot; WHERE CUSTOMERPACKAGE.CUSTOMERID = CUSTOMER.CUSTOMERID AND CUSTOMERPACKAGE.PACKAGEID = &quot;PACKAGE&quot;.PACKAGEID and  &quot;PACKAGE&quot;.PACKAGEID = :package_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="LK25A" Name="package_id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PACKAGEID&quot;, &quot;PACKAGENAME&quot; FROM &quot;PACKAGE&quot;">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
