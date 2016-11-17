<%--//////
/// Created by: Bourne Gordon-Krueger, 0103285514
/// Date modified: 17-11-2016
/// Purpose: Update and Delete Technicians
/// Known bugs: 
//////--%>

<%@ Page Title="Technician Maintenance" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateTech.aspx.cs" Inherits="TechSupportApp._TechnicianMaintenance" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <span class="pageTitle">Technician Maintenance</span>
        <div class="mt32">
            <a runat="server" class="btn btn-default" href="~/Site/Tech/AddTech">Add a Technician</a>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Class="mt32" CellPadding="4" DataKeyNames="TechID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TechID" HeaderText="TechID" InsertVisible="False" ReadOnly="True" SortExpression="TechID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportCon %>" SelectCommand="SELECT * FROM [Technicians]" DeleteCommand="DELETE FROM [Technicians] WHERE [TechID] = @TechID" InsertCommand="INSERT INTO [Technicians] ([Name], [Email], [Phone], [Password], [Level]) VALUES (@Name, @Email, @Phone, @Password, @Level)" UpdateCommand="UPDATE [Technicians] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone, [Password] = @Password, [Level] = @Level WHERE [TechID] = @TechID">
            <DeleteParameters>
                <asp:Parameter Name="TechID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Level" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Level" Type="Int32" />
                <asp:Parameter Name="TechID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>