using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsubmit_click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                // Check if the username already exists
                string checkUserQuery = "SELECT COUNT(*) FROM information WHERE Username = @Username";
                using (SqlCommand checkCmd = new SqlCommand(checkUserQuery, conn))
                {
                    checkCmd.Parameters.AddWithValue("@Username", TextUsername.Text);
                    conn.Open();
                    int userCount = (int)checkCmd.ExecuteScalar();
                    conn.Close();

                    if (userCount > 0)
                    {
                        // Username already exists
                        Response.Write("<script>alert('Username already exists. Please choose another username.');</script>");
                        return;
                    }
                }

                // Insert the new user record
                string sql = "INSERT INTO information (Name, Age, DateOfBirth, Communication_Address, Permanent_Address, Gender, District, State, Country, Username, Password) " +
                             "VALUES (@Name, @Age, @DateOfBirth, @Communication_Address, @Permanent_Address, @Gender, @District, @State, @Country, @Username, @Password)";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", TextName.Text);
                    cmd.Parameters.AddWithValue("@Age", TextAge.Text);
                    cmd.Parameters.AddWithValue("@DateOfBirth", TextDateOfBirth.Text);
                    cmd.Parameters.AddWithValue("@Communication_Address", TextCommunicationAddress.Text);
                    cmd.Parameters.AddWithValue("@Permanent_Address", TextPermanentAddress.Text);
                    cmd.Parameters.AddWithValue("@Gender", DropDownListGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@District", TextDistrict.Text);
                    cmd.Parameters.AddWithValue("@State", TextState.Text);
                    cmd.Parameters.AddWithValue("@Country", TextCountry.Text);
                    cmd.Parameters.AddWithValue("@Username", TextUsername.Text);
                    cmd.Parameters.AddWithValue("@Password", TextPassword.Text);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('Registration successful!');</script>");
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}
