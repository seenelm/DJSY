<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScheduleLookAt.aspx.cs" Inherits="WebFormDesign.ScheduleLookAt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 1245px; height: 415px">
                <legend>Schedule Look At</legend>
                <asp:Table ID="LookAtTable" runat="server" Width="59%" Height="400px">
                    <asp:TableRow>
                        <asp:TableCell>
                        <asp:Label ID ="lblClient" runat="server" Text="Client: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
                            <asp:TextBox ID="ClientBox" runat="server"></asp:TextBox>
                            </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblAvail" runat="server" Text="Availability:  "></asp:Label>
                            <asp:TextBox ID="AvailBox" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="btnSave" ValidationGroup="ValGroup1" runat="server" Text="Save"/> &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReturn" runat="server" Text="Return to Home"/>
                </asp:TableCell>
            </asp:TableRow>
                </asp:Table>
            </fieldset>
        </div>
    </form>
</body>
</html>
