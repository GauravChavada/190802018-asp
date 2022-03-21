using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_adminlogin : System.Web.UI.Page
{
    SqlConnection c;
    protected void Page_Load(object sender, EventArgs e)
    {
        c = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
        if (Session["name"] != null)
        {
            Response.Redirect("indexadmin.aspx");
        }
        
    }
    protected void login(object sender, EventArgs e)
    {
        try
        {
            SqlCommand s = new SqlCommand("SELECT COUNT(*) FROM [admin] WHERE [name]=@n AND [password]=@p", c);
            s.Parameters.AddWithValue("@n", TextBox1.Text);
            s.Parameters.AddWithValue("@p", TextBox2.Text);
            c.Open();
            int a = (int)s.ExecuteScalar();
            if (a >= 1)
            {
                Session["name"] = TextBox1.Text;
                TextBox1.Text =string.Empty;
                TextBox2.Text = string.Empty;
                Response.Redirect("indexadmin.aspx");
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Response.Write("<script>alert('Invalid Credentials............')</script>");
            }
            c.Close();
        }
        catch (SqlException ex)
        {
            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
        }
    }
}