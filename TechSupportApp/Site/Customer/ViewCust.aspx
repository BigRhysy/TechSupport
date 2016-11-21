<%--//////
/// Created by: Rhys Cunningham, 4101651512
/// Date modified: 18-11-2016
/// Purpose: View details and products registered to customer
/// Known bugs: 
//////--%>

<%@ Page Title="Customer Maintenance" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCust.aspx.cs" Inherits="TechSupportApp._ViewCust" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <span class="pageTitle">Add a Customer <a runat="server" href="~/Site/Customer/UpdateCust" class="btn btn-default pull-right">Back</a></span>
        <asp:SqlDataSource ID="SqlDataSourceViewCust" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportCon %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customers] ([Name], [Address], [City], [State], [ZipCode], [Phone], [Email]) VALUES (@Name, @Address, @City, @State, @ZipCode, @Phone, @Email)" SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)" UpdateCommand="UPDATE [Customers] SET [Name] = @Name, [Address] = @Address, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [Phone] = @Phone, [Email] = @Email WHERE [CustomerID] = @CustomerID">
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
            <SelectParameters>
                <asp:SessionParameter Name="CustomerID" SessionField="CustomerID" Type="Int32" />
            </SelectParameters>
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
        
        <div id="viewCustForm" class="mt32 form-horizontal" runat="server">
            <div class="form-group">
                <asp:Label ID="labName" AssociatedControlID="tbName" CssClass="col-md-2 control-label" runat="server" Text="Name:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbName" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="labAddress" AssociatedControlID="tbAddress" CssClass="col-md-2 control-label" runat="server" Text="Address:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbAddress" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="labCity" AssociatedControlID="tbCity" CssClass="col-md-2 control-label" runat="server" Text="City:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbCity" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="labState" AssociatedControlID="tbState" CssClass="col-md-2 control-label" runat="server" Text="State:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbState" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="labZip" AssociatedControlID="tbZip" CssClass="col-md-2 control-label" runat="server" Text="Zip Code:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbZip" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labEmail" AssociatedControlID="tbEmail" CssClass="col-md-2 control-label" runat="server" Text="Email:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbEmail" runat="server" TextMode="Email" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="labPhone" AssociatedControlID="tbPhone" CssClass="col-md-2 control-label" runat="server" Text="Phone:"></asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="tbPhone" runat="server" TextMode="Phone" CssClass="form-control" Enabled="False"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CustomerID,ProductCode" DataSourceID="SqlDataSourceCustReg">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
                            <asp:BoundField DataField="RegistrationDate" HeaderText="RegistrationDate" SortExpression="RegistrationDate" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceCustReg" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportCon %>" DeleteCommand="DELETE FROM [Registrations] WHERE [CustomerID] = @CustomerID AND [ProductCode] = @ProductCode" InsertCommand="INSERT INTO [Registrations] ([CustomerID], [ProductCode], [RegistrationDate]) VALUES (@CustomerID, @ProductCode, @RegistrationDate)" SelectCommand="SELECT * FROM [Registrations] WHERE ([CustomerID] = @CustomerID)" UpdateCommand="UPDATE [Registrations] SET [RegistrationDate] = @RegistrationDate WHERE [CustomerID] = @CustomerID AND [ProductCode] = @ProductCode">
                        <DeleteParameters>
                            <asp:Parameter Name="CustomerID" Type="Int32" />
                            <asp:Parameter Name="ProductCode" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CustomerID" Type="Int32" />
                            <asp:Parameter Name="ProductCode" Type="String" />
                            <asp:Parameter Name="RegistrationDate" Type="DateTime" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="CustomerID" SessionField="CustomerID" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="RegistrationDate" Type="DateTime" />
                            <asp:Parameter Name="CustomerID" Type="Int32" />
                            <asp:Parameter Name="ProductCode" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="mt32">
            <a runat="server" class="btn btn-default" href="~/Site/Customer/RegCust">Register Product</a>            
            </div>
        </div>
</asp:Content>
