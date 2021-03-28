<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScheduledWorkOrder.aspx.cs" Inherits="WebFormDesign.ScheduledWorkOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 1245px; height: 450px">
                <legend>Schedule a Work Order</legend>
                <asp:Table ID="WorkOrderTable" runat="server">
                    <%--this page looks messy right now but once some sections are hidden it will look a lot better--%>
                    <asp:TableRow>
                        <asp:TableCell>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="lblServType" runat="server" Text="Auction or Move?"></asp:Label>
                            &nbsp;&nbsp;
                            <%--DDL to select auction or move--%>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Text="" Value="1"></asp:ListItem>                         
                                <asp:ListItem Text="Auction" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Move" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                            <%--depending on selection, other attributes will be visible for auction or move--%>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
                    <%--Auction--%>
                <asp:Table ID="AuctionTable" runat="server" Width="59%" Height="250px">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblAuctionSell" runat="server" Text="Is it being sold right away?"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem Text="" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnContinue" runat="server" Text="Continue" /> &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnReturn" runat="server" Text="Return to Home" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <%--Move--%>
                <asp:Table ID="MoveTable" runat="server" Width="59%" Height="250px">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblMoveComplete" runat="server" Text="Is the move complete?"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem Text="" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="btnMoveOn" runat="server" Text="Continue" /> <%--when continue is pressed, it will move to 
                                closure if "yes" is selected or to the next question if "no" is selected--%>
                        </asp:TableCell>
                        <asp:TableCell>
                            <%--don't make below visible unless no is selected from prior DDL--%>
                            <asp:Label ID="lblMoveStorage" runat="server" Text="Is the move going into our storage?"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem Text="" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Yes" Value="2"></asp:ListItem>
                                <asp:ListItem Text="No" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                            <%--if move is going into our storage, go to storage web form--%>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnContinue2" runat="server" Text="Continue" /> &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnReturn2" runat="server" Text="Return to Home" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
        </div>
    </form>
</body>
</html>
