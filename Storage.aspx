<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Storage.aspx.cs" Inherits="WebFormDesign.Storage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--unsure if this is what the storage page is supposed to be like--%>
            <fieldset>
                <legend>Storage</legend>
                <asp:Table ID="StorageTable" runat="server" Width="59%" Height="100px">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="btnAuction" runat="server" Text="Auction Items - Out of Storage" />
                            <%--go to auctionDate page if this button is pressed--%>

                            <asp:Button ID="btnMove" runat="server" Text="Move Items - Out of Storage" />
                            <%--go to scheduledWorkOrder page if this button is pressed--%>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
        </div>
    </form>
</body>
</html>
