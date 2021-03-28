<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Closure.aspx.cs" Inherits="WebFormDesign.Closure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Closure</legend>
                <asp:Table ID="ClosureTable" runat="server" Width="59%" Height="100px">
                    <%--options for: follow up, review, make inactive--%>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblClient" runat="server" Text="Client:"></asp:Label> &nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList> <%--list of clients here--%>
                            <br />
                            <br />
                            <asp:Button ID="btnFollowUp" runat="server" Text="Follow up" /> &nbsp;
                            <asp:Button ID="btnReview" runat="server" Text="Review" /> &nbsp;
                            <asp:Button ID="btnInactive" runat="server" Text="Make inactive" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
        </div>
    </form>
</body>
</html>
