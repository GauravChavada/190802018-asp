using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Registraction : System.Web.UI.Page
{
    SqlConnection c;
    protected void Page_Load(object sender, EventArgs e)
    {
        //ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
        //DeleteCommand="DELETE FROM [users] WHERE [id] = @id" 
        //InsertCommand="INSERT INTO [users] ([name], [email], [password]) VALUES (@name, @email, @password)" 
        //ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
        //SelectCommand="SELECT [id], [name], [email], [password] FROM [users]" 
        //UpdateCommand="UPDATE [users] SET [name] = @name, [email] = @email, [password] = @password WHERE [id] = @id">
         c = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO [users] ([name], [email], [password]) VALUES (@name, @email, @password)", c);
        cmd.Parameters.AddWithValue("@name",TextBox1.Text.Trim());
        cmd.Parameters.AddWithValue("@email",TextBox2.Text.Trim());
        cmd.Parameters.AddWithValue("@password",TextBox3.Text.Trim());
        c.Open();
        int s = cmd.ExecuteNonQuery();
        c.Close();
        if (s==1)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            //Literal1.Text = "Registration successfully completed!";
            Response.Redirect("~/login.aspx");
        }
        else
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            Literal1.Text = "Registration Not Successfully completed!";
        }

    }
}