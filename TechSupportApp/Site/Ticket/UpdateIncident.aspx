<%--//////
/// Created by: Bourne Gordon-Krueger, 0103285514
/// Date modified: 17-11-2016
/// Purpose: Update and Delete Technicians
/// Known bugs: 
//////--%>

<%@ Page Title="Incident Maintenance" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateIncident.aspx.cs" Inherits="TechSupportApp._IncidentMaintenance" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <span class="pageTitle">Incident Maintenance</span>
        <div class="mt32">
            <a runat="server" class="btn btn-default" href="~/Site/Tech/AddTech">Add an Incident</a>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Class="mt32" CellPadding="4" DataSourceID="SqlDataSourceIncident" ForeColor="#333333" GridLines="None" Width="100%" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                <asp:BoundField DataField="DateOpened" HeaderText="DateOpened" SortExpression="DateOpened" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceIncident" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportCon %>" 
            SelectCommand="SELECT Incidents.ProductCode, Incidents.DateOpened, Incidents.Title, Incidents.Status, 
            Customers.Name 
            FROM Incidents 
            INNER JOIN Customers 
            ON Incidents.CustomerID = Customers.CustomerID AND Incidents.Status = ('Open')">
        </asp:SqlDataSource>
</asp:Content>