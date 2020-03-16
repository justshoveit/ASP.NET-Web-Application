<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PackageDetails.aspx.cs" Inherits="CourseworkWebApplication.PackageDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Package Details</title>
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
        <li class="active"><a href="https://localhost:44380/PackageDetails.aspx">Package Details</a></li>
        <li><a href="https://localhost:44380/TourGuideDetails.aspx">Tour Guide Details</a></li>
        <li><a href="https://localhost:44380/CustomerPackageSchedule.aspx">Customer Package Schedule</a></li>
       </ul>
    </div>
    </nav>

    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;PACKAGEID&quot; = :PACKAGEID" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;PACKAGEID&quot;, &quot;PACKAGENAME&quot;, &quot;TOTALDAYS&quot;, &quot;DIFFICULTY&quot;, &quot;STARTDATE&quot;, &quot;ENDDATE&quot;) VALUES (:PACKAGEID, :PACKAGENAME, :TOTALDAYS, :DIFFICULTY, :STARTDATE, :ENDDATE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;PACKAGENAME&quot; = :PACKAGENAME, &quot;TOTALDAYS&quot; = :TOTALDAYS, &quot;DIFFICULTY&quot; = :DIFFICULTY, &quot;STARTDATE&quot; = :STARTDATE, &quot;ENDDATE&quot; = :ENDDATE WHERE &quot;PACKAGEID&quot; = :PACKAGEID">
                <DeleteParameters>
                    <asp:Parameter Name="PACKAGEID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PACKAGEID" Type="String" />
                    <asp:Parameter Name="PACKAGENAME" Type="String" />
                    <asp:Parameter Name="TOTALDAYS" Type="Decimal" />
                    <asp:Parameter Name="DIFFICULTY" Type="String" />
                    <asp:Parameter Name="STARTDATE" Type="DateTime" />
                    <asp:Parameter Name="ENDDATE" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PACKAGENAME" Type="String" />
                    <asp:Parameter Name="TOTALDAYS" Type="Decimal" />
                    <asp:Parameter Name="DIFFICULTY" Type="String" />
                    <asp:Parameter Name="STARTDATE" Type="DateTime" />
                    <asp:Parameter Name="ENDDATE" Type="Decimal" />
                    <asp:Parameter Name="PACKAGEID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView2" runat="server" DataKeyNames="PACKAGEID" DataSourceID="SqlDataSource2" DefaultMode="Insert">
                <EditItemTemplate>
                    PACKAGEID:
                    <asp:Label ID="PACKAGEIDLabel1" runat="server" Text='<%# Eval("PACKAGEID") %>' />
                    <br />
                    PACKAGENAME:
                    <asp:TextBox ID="PACKAGENAMETextBox" runat="server" Text='<%# Bind("PACKAGENAME") %>' />
                    <br />
                    TOTALDAYS:
                    <asp:TextBox ID="TOTALDAYSTextBox" runat="server" Text='<%# Bind("TOTALDAYS") %>' />
                    <br />
                    DIFFICULTY:
                    <asp:TextBox ID="DIFFICULTYTextBox" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                    <br />
                    STARTDATE:
                    <asp:TextBox ID="STARTDATETextBox" runat="server" Text='<%# Bind("STARTDATE") %>' />
                    <br />
                    ENDDATE:
                    <asp:TextBox ID="ENDDATETextBox" runat="server" Text='<%# Bind("ENDDATE") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    PACKAGEID:
                    <asp:TextBox ID="PACKAGEIDTextBox" runat="server" Text='<%# Bind("PACKAGEID") %>' />
                    <br />
                    PACKAGENAME:
                    <asp:TextBox ID="PACKAGENAMETextBox" runat="server" Text='<%# Bind("PACKAGENAME") %>' />
                    <br />
                    TOTALDAYS:
                    <asp:TextBox ID="TOTALDAYSTextBox" runat="server" Text='<%# Bind("TOTALDAYS") %>' />
                    <br />
                    DIFFICULTY:
                    <asp:TextBox ID="DIFFICULTYTextBox" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                    <br />
                    STARTDATE:
                    <asp:TextBox ID="STARTDATETextBox" runat="server" Text='<%# Bind("STARTDATE") %>' />
                    <br />
                    ENDDATE:
                    <asp:TextBox ID="ENDDATETextBox" runat="server" Text='<%# Bind("ENDDATE") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    PACKAGEID:
                    <asp:Label ID="PACKAGEIDLabel" runat="server" Text='<%# Eval("PACKAGEID") %>' />
                    <br />
                    PACKAGENAME:
                    <asp:Label ID="PACKAGENAMELabel" runat="server" Text='<%# Bind("PACKAGENAME") %>' />
                    <br />
                    TOTALDAYS:
                    <asp:Label ID="TOTALDAYSLabel" runat="server" Text='<%# Bind("TOTALDAYS") %>' />
                    <br />
                    DIFFICULTY:
                    <asp:Label ID="DIFFICULTYLabel" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                    <br />
                    STARTDATE:
                    <asp:Label ID="STARTDATELabel" runat="server" Text='<%# Bind("STARTDATE") %>' />
                    <br />
                    ENDDATE:
                    <asp:Label ID="ENDDATELabel" runat="server" Text='<%# Bind("ENDDATE") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PACKAGEID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PACKAGEID" HeaderText="PACKAGEID" ReadOnly="True" SortExpression="PACKAGEID" />
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
        </div>
    </form>
</body>
</html>
