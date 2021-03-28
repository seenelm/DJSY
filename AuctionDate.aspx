<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuctionDate.aspx.cs" Inherits="WebFormDesign.AuctionDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Auction Date</legend>
                <asp:Table ID="InvAuctionTable" runat="server" Width="59%" Height="350px">
                    <%--Select an auction date--%>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblSelect" runat="server" Text="Choose an Auction Date for"></asp:Label>  &nbsp;&nbsp;
                            <asp:TextBox ID="ClientBox" runat="server" Text="client name"></asp:TextBox> <%--insert 
                                client name here in c#--%>
                            <br />
                            <br />
                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                            <br />
                            <asp:Button ID="btnNotify" runat="server" Text="Notify Client" />
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
