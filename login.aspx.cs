using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [users] WHERE [email] = @nm AND [password] = @pm", c);
        cmd.Parameters.AddWithValue("@nm", TextBox1.Text.Trim());
        cmd.Parameters.AddWithValue("@pm", TextBox2.Text.Trim());
        c.Open();
        int a = (int)cmd.ExecuteScalar();
        c.Close();
        if (a == 1)
        {
            Session["name"] = TextBox1.Text;
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            Response.Redirect("~/admin.aspx");
        }
        else
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            Response.Write("<script>alert('Eroor')</script>");
        }
    }
}