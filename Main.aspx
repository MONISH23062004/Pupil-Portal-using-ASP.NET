<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebApp2.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <style>
        body {
            background-color: darkgrey;
            font-family: 'Times New Roman', Times, serif;
            margin: 0; 
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Ensure body takes up the full height */
            flex-direction: column; /* Stack elements vertically */
        }
        form {
            background-color: black;
            color: whitesmoke;
            width: 110%; /* Ensure the form takes the full width */
            max-width: 1000px; /* Optional: to limit the width of the form */
            padding-bottom: 20px; /* Add some padding to ensure content is not cut off */
        }
        #Dashboard {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            font-weight: bold;
        }
        h3 {
            margin: 0;
        }
        #btnclick {
            color: black;
            cursor: pointer;
            padding: 5px 10px;
            background-color: white;
            border: none;
            border-radius: 5px;
        }
        #btnclick:hover {
            background-color: hotpink;
        }
        #lblUsername {
            color: white;
            font-weight: bold;
            text-decoration: underline;
        }
        .user-details {
            margin: 20px auto;
            padding: 30px;
            background-color: lightgrey; /* Grey background for the user details */
            border-radius: 5px;
            max-width: 800px; /* Optional: to control the width */
            color: black; /* Ensuring the text color is visible on grey background */
            text-align: center; /* Center align the text within the container */
        }
        .user-details div {
            margin: 10px 0;
            text-align: left; /* Align text left within each div for labels and values */
        }
        .user-details label {
            display: block; /* Ensure labels and values are block level for alignment */
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Dashboard">
            <h3>Dashboard</h3>
            <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnclick" runat="server" Text="Logout" OnClick="btn_click"></asp:Button>
        </div>
    </form>
    <div class="user-details">
        <div><asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label><asp:Label ID="lblNameValue" runat="server"></asp:Label></div>
        <div><asp:Label ID="lblAge" runat="server" Text="Age: "></asp:Label><asp:Label ID="lblAgeValue" runat="server"></asp:Label></div>
        <div><asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth: "></asp:Label><asp:Label ID="lblDateOfBirthValue" runat="server"></asp:Label></div>
        <div><asp:Label ID="lblCommunicationAddress" runat="server" Text="Communication Address: "></asp:Label><asp:Label ID="lblCommunicationAddressValue" runat="server"></asp:Label></div>
        <div><asp:Label ID="lblPermanentAddress" runat="server" Text="Permanent Address: "></asp:Label><asp:Label ID="lblPermanentAddressValue" runat="server"></asp:Label></div>
        <div><asp:Label ID="lblGender" runat="server" Text="Gender: "></asp:Label><asp:Label ID="lblGenderValue" runat="server"></asp:Label></div>
        <div><asp:Label ID="lblDistrict" runat="server" Text="District: "></asp:Label><asp:Label ID="lblDistrictValue" runat="server"></asp:Label></div>
        <div><asp:Label ID="lblState" runat="server" Text="State: "></asp:Label><asp:Label ID="lblStateValue" runat="server"></asp:Label></div>
        <div><asp:Label ID="lblCountry" runat="server" Text="Country: "></asp:Label><asp:Label ID="lblCountryValue" runat="server"></asp:Label></div>
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    </div>
</body>
</html>
