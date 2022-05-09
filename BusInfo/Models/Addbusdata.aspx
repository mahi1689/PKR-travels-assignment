<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addbusdata.aspx.cs" Inherits="BusInfo.Models.Addbusdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bus Booking</h1>
        </div>
        <div>
            <asp:Label >Bus ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
            <asp:TextBox ID="Textbox4" ToolTip ="Enter BusID" runat="server" Height="25px" Width="145px"></asp:TextBox><br /><br />


            <asp:Label>Boarding Point &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="dropdownlist1" runat="server" Height="25px" Width="145px" >
                <asp:ListItem Value="">Please select</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Mysuru</asp:ListItem>
            </asp:DropDownList></asp:Label><br /><br />

            <asp:Label >Travel Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
            <asp:TextBox ID="Textbox1" ToolTip ="Enter travel date" runat="server" Height="25px" Width="145px"></asp:TextBox><br /><br />

            <asp:Label >Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
            <asp:TextBox ID="Textbox2" ToolTip ="Enter Amount" runat="server" Height="25px" Width="145px"></asp:TextBox><br /><br />

            <asp:Label >Rating&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
            <asp:TextBox ID="Textbox3" ToolTip ="Enter Rating between 1 to 5" runat="server" Height="25px" Width="145px"></asp:TextBox><br /><br />

            <asp:Button ID="button1" runat="server" OnClick="button1clicked"  Text="Save bus data"/>
        </div>
        <br /><br />
        <div>
          
         <asp:Label ID="label" runat="server">To Fetch the data </asp:Label>
         <asp:Button ID="button2" runat="server" OnClick="button2clicked"  Text="Retrieve_bus_data"/>
               
            </div>

       
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
