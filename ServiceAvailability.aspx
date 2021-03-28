<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceAvailability.aspx.cs" Inherits="WebFormDesign.ServiceAvailability" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Service Availability</legend>
                <asp:Table ID="ServAvailTable" runat="server" Width="59%" Height="250px">
                    <asp:TableRow>
                        <asp:TableCell>
                            <%--Use calendar to see avail of employees and equipment, available dates in green, unavailable days in orange or red--%>
                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
        </div>
    </form>
</body>
</html>
