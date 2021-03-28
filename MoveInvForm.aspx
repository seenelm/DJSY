<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoveInvForm.aspx.cs" Inherits="WebFormDesign.MoveInvForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 1245px; height: 415px">
                <legend>Move Inventory</legend>
                <asp:Table ID="InvMoveTable" runat="server" Width="59%" Height="400px">
                    <asp:TableRow>
                        <asp:TableCell>
                        <asp:Label ID="lblName" runat="server" Text="Item Name:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="NameBox" runat="server"></asp:TextBox>
                           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="NameBox" 
                        Text="    Please enter a name for this item!" ForeColor="Red"></asp:RequiredFieldValidator>--%> <%--once you do c# side, uncomment these--%>
                        </asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow>
                        <asp:TableCell>
                        <asp:Label ID="lblDesc" runat="server" Text="Item Description:"></asp:Label> &nbsp;
                            <asp:TextBox ID="DescBox" runat="server" TextMode="MultiLine" Rows ="5"></asp:TextBox>
                       <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="NameBox" 
                        Text="    Please enter a description for this item!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                        <asp:Label ID="lblCost" runat="server" Text="Item Cost:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="CostBox" runat="server"></asp:TextBox>
                             <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="NameBox" 
                        Text="    Please enter a cost for this item!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnSave" runat="server" Text="Save" /> &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnAnother" runat="server" Text="Add Another Item" /> <%--make sure this button is only visible after pressing save (or greyed out before pressing save)--%>
                            <br />
                            <br />
                            <asp:Button ID="btnReturn" runat="server" Text="Return to Home" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
        </div>
    </form>
</body>
</html>
