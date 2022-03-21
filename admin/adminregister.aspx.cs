using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_adminregister : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void register(object sender, EventArgs e)
    {
        SqlCommand s = new SqlCommand("INSERT INTO [admin] ([name],[email],[password]) VALUES (@nm,@em,@pw)", c);
        s.Parameters.AddWithValue("@nm", TextBox1.Text.Trim());
        s.Parameters.AddWithValue("@em", TextBox2.Text.Trim());
        s.Parameters.AddWithValue("@pw", TextBox3.Text.Trim());
        c.Open();
        int a = s.ExecuteNonQuery();
        if (a == 1)
        {
            Session["name"] = TextBox1.Text;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Response.Redirect("adminlogin.aspx");
        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Response.Write("<script>alert('Error............')</script>");
        }
        c.Close();
    }
}