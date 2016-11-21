<%--//////
/// Created by: Bourne Gordon-Krueger, 0103285514
/// Date modified: 17-11-2016
/// Purpose: Add new Technicians
/// Known bugs: 
//////--%>

<%@ Page Title="Incident Maintenance" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddIncident.aspx.cs" Inherits="TechSupportApp._AddIncident" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <span class="pageTitle">Add a Technician <a runat="server" href="~/Site/Tech/UpdateTech" class="btn btn-default pull-right">Back</a></span>
        <asp:SqlDataSource ID="SqlDataSourceAddTech" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportCon %>">
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
                <asp:Label ID="labEmail" AssociatedControlID="tbEmail" CssClass="col-md-2 control-label" runat="server" Text="Email:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbEmail" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labPhone" AssociatedControlID="tbPhone" CssClass="col-md-2 control-label" runat="server" Text="Phone:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbPhone" runat="server" TextMode="Phone" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labPassword" AssociatedControlID="tbPassword" CssClass="col-md-2 control-label" runat="server" Text="Password:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="tbPassword" CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labLevel" AssociatedControlID="tbLevel" CssClass="col-md-2 control-label" runat="server" Text="Level:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbLevel" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" Text="Submit" CssClass="btn btn-default" ID="newTechSubmit" OnClick="newTechSubmit_Click" />
                    <asp:Label id="labError" runat="server" Text="" />
                </div>
            </div>
        </div>
</asp:Content>
