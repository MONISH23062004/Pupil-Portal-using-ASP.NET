<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        function showError(message) {
            alert(message);
        }
    </script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: black;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: darkgrey;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 300px;
            font-weight:bold;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        asp\:Label {
            display: block;
            margin-bottom: 5px;
            color: #333;
            font-weight:bold;
        }

        asp\:TextBox {
            width: 100%;
            padding: 8px;
            margin-bottom: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        asp\:Button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight:bold;
        }

        asp\:Button:hover {
            background-color: #45a049;
        }

        div {
            text-align: center;
        }

        .error {
            color: red;
            font-size: 12px;
        }
    </style>
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Login Page</h2>
            <asp:Label ID="LabelUsername" runat="server" Text="Username:" AssociatedControlID="TextUsername"></asp:Label>
            <asp:TextBox ID="TextUsername" runat="server" ValidationGroup="LoginGroup"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="TextUsername" ErrorMessage="Username is required." CssClass="error" Display="Dynamic" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="LabelPassword" runat="server" Text="Password:" AssociatedControlID="TextPassword"></asp:Label>
            <asp:TextBox ID="TextPassword" runat="server" TextMode="Password" ValidationGroup="LoginGroup"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TextPassword" ErrorMessage="Password is required." CssClass="error" Display="Dynamic" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ValidationGroup="LoginGroup" />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_click"></asp:Button>
            <asp:Label ID="lblError" runat="server" CssClass="error" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
