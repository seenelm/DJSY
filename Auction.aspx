<%@ Page Title="" Language="C#" MasterPageFile="~/Lab2.Master" AutoEventWireup="true" CodeBehind="Auction.aspx.cs" Inherits="Lab2.Auction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CustomerStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div Class="customer">

        <img src="logo.png" alt="Alternate Text" class="user" />
        <h2>Create New Auction Service</h2>
        <br />
        
        <asp:Table ID="Table1" runat="server" Width="100%" Height="146px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="itemdesclbl" runat="server" Text="Enter Item Description"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="itemdesc" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="custlbl" runat="server" Text="Select Customer"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="CustDdl" runat="server" DataSourceID="list" DataTextField ="FirstLastName" DataValueField="CustomerID"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="emplbl" runat="server" Text="Select Employee"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="EmployeeDdl" runat="server" DataSourceID="list1" DataTextField ="EName" DataValueField="EmployeeID"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>

                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="Create" runat="server" Text="Create" OnClick="Create_Click"/>
                    <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel_Click"/>
                    <asp:Label ID="LblStatus" runat="server" Text=""></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
     <asp:SqlDataSource 
            ID="list"
            runat="server"
            ConnectionString="<%$ ConnectionStrings: DB %>" 
            SelectCommand="Select * From Customer"></asp:SqlDataSource>
    <asp:SqlDataSource 
            ID="list1"
            runat="server"
            ConnectionString="<%$ ConnectionStrings: DB %>" 
            SelectCommand="Select * From Employee"></asp:SqlDataSource>
</asp:Content>
