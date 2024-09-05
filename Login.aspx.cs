using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Activities;

namespace WebApp2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);

        protected void btnRegister_click(object sender, EventArgs e)
        {
            this.Page.Validate("RegisterGroup");
            Response.Redirect("Register.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string Username = TextUsername.Text.Trim();
                string Password = TextPassword.Text.Trim(); 

                con.Open();
                // Use parameterized queries to prevent SQL injection
                string qry = "SELECT Username FROM information WHERE Username = @Username AND Password = @Password";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Username", Username);
                cmd.Parameters.AddWithValue("@Password", Password);

                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["Username"] = Username;
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    lblError.Text = "Invalid Username or Password";
                    lblError.Visible = true;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                // Log the exception or show a friendly error message
                lblError.Text = "An error occurred. Please try again later.";
                lblError.Visible = true;
            }
        }
        
    }
}
