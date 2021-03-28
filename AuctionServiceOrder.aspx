<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuctionServiceOrder.aspx.cs" Inherits="WebFormDesign.AuctionServiceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 1245px; height: 1175px">
                <asp:Table ID="AuctionServiceOrderTable" runat="server" Width="59%" Height="400px">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblTitle" runat="server" Text="Auction Service Order" Font-Underline="true" Font-bold="true" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
                        <asp:Label ID ="lblDateTime" runat="server" Text="Date & Time of Auction: "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="DateTimeBox" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                            </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblBasic" runat="server" Text="Basic Contact Info" Font-Underline="true" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblFName" runat="server" Text="First Name:  "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="FNameBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter first name!" ForeColor="Red"></asp:RequiredFieldValidator>--%> <%--once you do c# side, uncomment these--%>
                            <br />
                            <asp:Label ID="lblLName" runat="server" Text="Last Name:  "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="LNameBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="LNameBox" 
                        Text="    Please enter last name!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblHomePhone" runat="server" Text="Home Phone: "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="HomePhoneBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="HomePhoneBox" 
                        Text="    Please enter a home phone number!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblMobilePhone" runat="server" Text="Mobile Phone: "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="MobilePhoneBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="MobilePhoneBox" 
                        Text="    Please enter a mobile phone number!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblAddress" runat="server" Text="Current Address:  "></asp:Label> &nbsp;
                            <asp:TextBox ID="AddressBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="AddressBox" 
                        Text="    Please enter an address!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <br />
                            <br />
                            

                            <%--show this section if there is an auction pick up--%>
                            <asp:Label ID="lblPickUpTitle" runat="server" Text="Pick Up" Font-Underline="true" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblCrew1" runat="server" Text="Assign Crew:"></asp:Label>
                            <%--either drop down or textbox--%>
                            <br />
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server">Link to Inventory</asp:LinkButton>
                            <br />
                            <br />

                            <%--info populated from auction assessment--%>
                            <asp:Label ID="lblHomeType" runat="server" Text="Type of Home:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="HomeTypeBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter home type!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblTruck" runat="server" Text="Truck Accessibility:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TruckBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter truck accessibility!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblWalk" runat="server" Text="Walking Distance to Loading Door:"></asp:Label> &nbsp;
                            <asp:TextBox ID="WalkBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter walking distance!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblSteps" runat="server" Text="# Steps to House:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="StepsBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter number of steps to house!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblSpecial" runat="server" Text="Special Equipment:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="SpecialBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter special equipment!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblTrucks" runat="server" Text="Trucks Involved:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TrucksBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter trucks involved!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblMaterials" runat="server" Text="Boxes & Packing:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%--checkbox for box types--%>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
                            <%--txtbox for materials--%>
                            <asp:TextBox ID="MaterialsBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter packing materials!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblEst" runat="server" Text="Estimated Rates and Fees:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="EstBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter estimated rates and fees!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <br />

                            
                            <asp:Label ID="lblPickUp" runat="server" Text="Pick up address same as current address?:  "></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />

                            <%--only show this label and textbox if "no" is selected on drop down--%>
                            <asp:Label ID="lblAddress2" runat="server" Text="Pick Up Address:  "></asp:Label> &nbsp;
                            <asp:TextBox ID="PickUpBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PickUpBox" 
                        Text="    Please enter a pick up address!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <br />
                            <br />


                            <%--only show this section if "Packing" was selected on auction assessment form--%>
                            <%--include types of boxes and total for each kind--%>
                            <asp:Label ID="lblPacking" runat="server" Text="Packing" Font-Underline="true" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblCrew" runat="server" Text="Assign Crew:"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <%--assign crew - either a drop down or text box--%>


                            <%--only show this section if trash removal service was selected on auction assessment form--%>
                            <asp:Label ID="lblTrash" runat="server" Text="Trash" Font-Underline="true" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblDumpster" runat="server" Text="Dumpster needed?"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="lblAddress1" runat="server" Text="Address:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <%--this will populate from contact info OR pick up address above--%>
                            <asp:TextBox ID="AddressBox1" runat="server"></asp:TextBox> 
                            
                            <br />

                            <asp:Label ID="lblWorkers" runat="server" Text="# of Workers Needed:"></asp:Label> &nbsp;
                            <asp:TextBox ID="WorkersBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter workers needed!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblCharge" runat="server" Text="Charge:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="ChargeBox" runat="server"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter a charge!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <asp:Label ID="lblDesc" runat="server" Text="Description:"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="DescBox" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" ValidationGroup="ValGroup1" 
                        runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FNameBox" 
                        Text="    Please enter a description!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            <br />
                            <br />
                            <%--pop up window when button is clicked--%>
                            <asp:Button ID="btnSchedule" runat="server" Text="Scheduling" />
                            <br />
                            <br />
                            <br /> 

                            <asp:Label ID="lblStorage" runat="server" Text="Storage" Font-Underline="true" Font-Size="Large"></asp:Label>
                            <br />
                            <br />
                            <%--storage?--%>

                            <%--auction date set in pop up window and customer is contacted--%>
                            <asp:Button ID="Button1" runat="server" Text="Set Auction Date" />
                            <br />
                            <br />
                            <br />

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
