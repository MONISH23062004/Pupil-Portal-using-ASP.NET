using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApp2
{
    public partial class Main : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    string username = Session["Username"].ToString();
                    lblUsername.Text = "Welcome " + username;

                    // Fetch and display user details from the database
                    DisplayUserDetails(username);
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private void DisplayUserDetails(string username)
        {
            try
            {
                con.Open();
                string qry = "SELECT Name, age, DateOfBirth, Communication_Address, Permanent_Address, Gender, District, State, Country FROM information WHERE Username = @Username";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Username", username);

                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    lblName.Text = "Name: " + sdr["Name"].ToString();
                    lblAge.Text = "Age: " + sdr["age"].ToString();
                    lblDateOfBirth.Text = "Date of Birth: " + sdr["DateOfBirth"].ToString();
                    lblCommunicationAddress.Text = "Communication Address: " + sdr["Communication_Address"].ToString();
                    lblPermanentAddress.Text = "Permanent Address: " + sdr["Permanent_Address"].ToString();
                    lblGender.Text = "Gender: " + sdr["Gender"].ToString();
                    lblDistrict.Text = "District: " + sdr["District"].ToString();
                    lblState.Text = "State: " + sdr["State"].ToString();
                    lblCountry.Text = "Country: " + sdr["Country"].ToString();
                }
                con.Close();
            }
            catch (Exception ex)
            {
                // Handle the exception (log it or show a message)
                lblError.Text = "An error occurred while retrieving your details.";
                lblError.Visible = true;
            }
        }

        protected void btn_click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}
