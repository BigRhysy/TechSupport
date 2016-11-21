<%--//////
/// Created by: Rhys Cunningham, 4101651512
/// Date modified: 21-11-2016
/// Purpose: Register a product to a customer
/// Known bugs: 
//////--%>

<%@ Page Title="Register Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegCust.aspx.cs" Inherits="TechSupportApp._RegCust" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <span class="pageTitle">Register a New Product<a runat="server" href="~/Site/Customer/ViewCust" class="btn btn-default pull-right">Back</a></span>
        <asp:SqlDataSource ID="SqlDataSourceRegCust" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportCon %>" SelectCommand="SELECT * FROM [Products]">
        </asp:SqlDataSource>
        
        <div id="newRegForm" class="mt32 form-horizontal" runat="server">
            <div class="form-group">
                <asp:Label ID="labName" AssociatedControlID="tbName" CssClass="col-md-2 control-label" runat="server" Text="Name:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbName" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>                    
                </div>
            </div>                        
            <div class="form-group">
                <asp:Label ID="labProduct" AssociatedControlID="DDLProduct" CssClass="col-md-2 control-label" runat="server" Text="Product:"></asp:Label>
                <div class="col-md-10">
                    <asp:DropDownList ID="DDLProduct" runat="server" DataSourceID="SqlDataSourceRegCust" DataTextField="Name" DataValueField="ProductCode" Height="35px"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labDate" AssociatedControlID="tbDate" CssClass="col-md-2 control-label" runat="server" Text="Date:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbDate" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>                    
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" Text="Submit" CssClass="btn btn-default" ID="newRegSubmit" OnClick="newRegSubmit_Click" />
                </div>
            </div>
        </div>
</asp:Content>
