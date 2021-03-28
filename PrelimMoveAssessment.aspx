<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrelimMoveAssessment.aspx.cs" Inherits="WebApplication1.yup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Table ID="tblCustomer" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblMethod" runat="server" Text="Contact Method: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlMethod" runat="server" OnSelectedIndexChanged="ddlMethod_SelectedIndexChanged">
                            <asp:ListItem Text="Select..." Value="default" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Phone" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Email" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Customer Portal" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                     </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblCustomer" runat="server" Text="Select a Customer: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlCustomer" runat="server" AutoPostBack="false">
                            <asp:ListItem Value="0" Selected="True"> Select... </asp:ListItem>
                        </asp:DropDownList>  
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <asp:Table ID="tblBasicInfo" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblPhoneNum" runat="server" Text="Phone Number: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtPhoneNum" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddress" runat="server" Text="Current Address: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <br />
            <br />

            <asp:Label ID="lblPrelim" runat="server" Text="Preliminary Move Assessment" Font-Underline="true" Font-Size="Large"></asp:Label>

            <asp:Table ID="tblPrelim" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="Date to Leave Current Address: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAvailability" runat="server" Text="Days Available for Move: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtAvailability" runat="server" ></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblDestination" runat="server" Text="Destination Address: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblMLS" runat="server" Text="Is there MLS Listing?"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlMLS" runat="server" OnSelectedIndexChanged="ddlMLS_SelectedIndexChanged">
                            <asp:ListItem Text="Select..." Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text ="Yes" Value="1"></asp:ListItem>
                            <asp:ListItem Text ="No" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblPhotos" runat="server" Text="Able to Send Photos?"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlPhotos" runat="server" OnSelectedIndexChanged="ddlPhotos_SelectedIndexChanged">
                            <asp:ListItem Text="Select..." Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text ="Yes" Value="1"></asp:ListItem>
                            <asp:ListItem Text ="No" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAutction" runat="server" Text="Auction Service Needed?"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlAuction" runat="server" OnSelectedIndexChanged="ddlAuction_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Text="Select..." Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text ="Yes" Value="1"></asp:ListItem>
                            <asp:ListItem Text ="No" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblAddOn" runat="server" Text="Add On Services?"></asp:Label>
                        <asp:CheckBoxList ID="cbAddOn" runat="server">
                            <asp:ListItem Text="Packing"></asp:ListItem>
                            <asp:ListItem Text="Trash Removal"></asp:ListItem>
                            <asp:ListItem Text="Donation Hauling"></asp:ListItem>
                        </asp:CheckBoxList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <br />
            <br />  

            <asp:Button ID="btnSave" runat="server" Text="Save Form" OnClick="btnSave_Click"/>



        </div>
    </form>
</body>
</html>
