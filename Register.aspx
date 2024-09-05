<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApp2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style>
      body {
            background-color: darkgrey;
            margin: 5px;
        }

        form {
            /* Additional styles for the form can be added here */
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
            font-weight:bold;
            text-decoration:underline;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 10px;
        }

        td {
            padding: 10px;
            vertical-align: middle;
        }

        asp\:Label {
            font-weight: bold;
            display: inline-block;
            margin-bottom: 5px;
        }

        asp\:TextBox,
        asp\:DropDownList {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        asp\:TextBox::placeholder {
            color: #888;
        }

        tr:last-child td {
            padding-bottom: 0;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
       #btnsubmit {
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            border: none;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        #btnsubmit:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Enter the Details</h3>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LabelName" runat="server" Text="Name:" AssociatedControlID="TextName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextName" runat="server" placeholder="Enter Your Name"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="LabelAge" runat="server" Text="Age:" AssociatedControlID="TextAge"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextAge" runat="server" placeholder="Eg:20"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="LabelDateOfBirth" runat="server" Text="Date Of Birth:" AssociatedControlID="TextDateOfBirth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextDateOfBirth" runat="server" placeholder="Eg:YYYY/MM/DD"></asp:TextBox>
                    </td>
               </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelCommunicationAddress" runat="server" Text="Communication Address:" AssociatedControlID="TextCommunicationAddress"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextCommunicationAddress" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="LabelPermanentAddress" runat="server" Text="Permanent Address:" AssociatedControlID="TextPermanentAddress"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextPermanentAddress" runat="server"></asp:TextBox>
                    </td>
                     <td>
                         <asp:Label ID="LabelGender" runat="server" Text="Gender:" AssociatedControlID="DropDownListGender"></asp:Label>
                     </td>
                     <td>
                         <asp:DropDownList ID="DropDownListGender" runat="server">
                             <asp:ListItem Text="Select Gender" Value="" />
                             <asp:ListItem Text="Male" Value="Male" />
                             <asp:ListItem Text="Female" Value="Female" />
                         </asp:DropDownList>
                     </td>
                </tr>
                <tr>
                   
                    <td>
                        <asp:Label ID="LabelDistrict" runat="server" Text="District:" AssociatedControlID="TextDistrict"/>
                    </td>
                    <td>
                        <asp:TextBox ID="TextDistrict" runat="server"/>
                    </td>
                    <td>
                        <asp:Label ID="LabelState" runat="server" Text="State:" AssociatedControlID="TextState"/>
                    </td>
                    <td>
                        <asp:TextBox ID="TextState" runat="server"/>
                    </td>
                    <td>
                        <asp:Label ID="LabelCountry" runat="server" Text="Country:" AssociatedControlID="TextCountry"/>
                    </td>
                    <td>
                        <asp:TextBox ID="TextCountry" runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelUsername" runat="server" Text="Username:" AssociatedControlID="TextUsername"/>
                    </td>
                    <td>
                        <asp:TextBox ID="TextUsername" runat="server"/>
                    </td>
                    <td>
                        <asp:Label ID="LabelPassword" runat="server" Text="Password:" AssociatedControlID="TextPassword"/>
                    </td>
                    <td>
                        <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"/>
                    </td>
                </tr>
            </table>
            <div class="button-container">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_click" />
            </div>
        </div>
    </form>
</body>
</html>
