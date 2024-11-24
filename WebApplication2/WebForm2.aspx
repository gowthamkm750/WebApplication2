<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KSM FEEDBACK FORM
    </title>
     <link rel="icon" type="faveicon" href="https://img.icons8.com/emoji/48/hotel-emoji.png" />
    <style type="text/css">
        #TextArea1 {
            height: 127px;
            width: 1069px;
        }
        #ftext {
            width: 1045px;
            height: 160px;
        }
        #heading {
            text-align:center;
        }
        h3{
            color:red;
            font-size:x-large;
            font-weight:bolder;
        }
        body {
            background:url(https://images.pexels.com/photos/262978/pexels-photo-262978.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2) no-repeat fixed;
            background-size:cover;
            color:royalblue;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="heading">
        <h3>K S M HOTEL</h3>
        <p>
            CUSTOMER
            FEEDBACK FORM</p>
            </div>
        <p>
        
            FEEDBACK TYPE:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" EnableTheming="False" ErrorMessage="THIS FIELD CANNOT BE EMPTY" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellPadding="3" CellSpacing="15" RepeatDirection="Horizontal">
                <asp:ListItem>COMMANDS</asp:ListItem>
                <asp:ListItem>SUGGESTION</asp:ListItem>
                <asp:ListItem>QUESTION</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            DESCRIBE YOUR FEEDBACK:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ftext" EnableTheming="False" ErrorMessage="THIS FIELD CANNOT BE EMPTY" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <textarea id="ftext" runat="server" name="S1"></textarea></p>
        <p>
            NAME</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="258px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableTheming="False" ErrorMessage="THIS FIELD CANNOT BE EMPTY" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="253px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableTheming="False" ErrorMessage="THIS FIELD CANNOT BE EMPTY" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="FIRST NAME"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="LAST NAME"></asp:Label>
        </p>
        <p>
            EMAIL</p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" Height="42px" Width="368px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="INVALID EMAIL" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p style="margin-left: 440px">
            <asp:Button ID="Button1" runat="server" BackColor="#009900" ForeColor="White" Text="SUBMIT APPLICATION" OnClick="Button1_Click" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
