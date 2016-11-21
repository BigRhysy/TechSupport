<%--//////
/// Created by: Rhys Cunningham, 4101651512
/// Date modified: 18-11-2016
/// Purpose: Add new Customers
/// Known bugs: 
//////--%>

<%@ Page Title="Customer Maintenance" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCust.aspx.cs" Inherits="TechSupportApp._AddCust" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <span class="pageTitle">Add a Customer <a runat="server" href="~/Site/Customer/UpdateCust" class="btn btn-default pull-right">Back</a></span>
        <asp:SqlDataSource ID="SqlDataSourceAddCust" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportCon %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([Name], [Address], [City], [State], [ZipCode], [Phone], [Email]) VALUES (@Name, @Address, @City, @State, @ZipCode, @Phone, @Email)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [Name] = @Name, [Address] = @Address, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [Phone] = @Phone, [Email] = @Email WHERE [CustomerID] = @CustomerID">
            <DeleteParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="CustomerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <div id="newTechForm" class="mt32 form-horizontal" runat="server">
            <div class="form-group">
                <asp:Label ID="labName" AssociatedControlID="tbName" CssClass="col-md-2 control-label" runat="server" Text="Name:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbName" CssClass="text-danger" ErrorMessage="The name field is required." />
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="labAddress" AssociatedControlID="tbAddress" CssClass="col-md-2 control-label" runat="server" Text="Address:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbAddress" CssClass="text-danger" ErrorMessage="The address field is required." />
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="labCity" AssociatedControlID="tbCity" CssClass="col-md-2 control-label" runat="server" Text="City:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbCity" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbCity" CssClass="text-danger" ErrorMessage="The city field is required." />
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="labState" AssociatedControlID="tbState" CssClass="col-md-2 control-label" runat="server" Text="State:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbState" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbState" CssClass="text-danger" ErrorMessage="The state field is required." />
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="labZip" AssociatedControlID="tbZip" CssClass="col-md-2 control-label" runat="server" Text="Zip Code:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbZip" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbZip" CssClass="text-danger" ErrorMessage="The zip code field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labEmail" AssociatedControlID="tbEmail" CssClass="col-md-2 control-label" runat="server" Text="Email:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbEmail" CssClass="text-danger" ErrorMessage="The email field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labPhone" AssociatedControlID="tbPhone" CssClass="col-md-2 control-label" runat="server" Text="Phone:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbPhone" runat="server" TextMode="Phone" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbPhone" CssClass="text-danger" ErrorMessage="The phone field is required." />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" Text="Submit" CssClass="btn btn-default" ID="newCustSubmit" OnClick="newCustSubmit_Click" />
                    <asp:Label id="labError" runat="server" Text="" />
                </div>
            </div>
        </div>
</asp:Content>
