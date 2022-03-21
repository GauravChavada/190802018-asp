using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        print();
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [admin]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [admin] WHERE [id]=@id",con);
        cmd.Parameters.AddWithValue("@id",btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Literal4.Text = "Data Deleted";
            print();
        }
        else
        {
            Literal4.Text = "Data Not Deleted";
            print();
        }
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button b = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [admin] WHERE [id]=" + b.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][3].ToString();
        
        ViewState["id"] = b.CommandArgument;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand s = new SqlCommand("UPDATE [admin] SET [name] = @name, [password] = @password WHERE [id] =" + ViewState["id"].ToString(), con);
        s.Parameters.AddWithValue("@name", TextBox1.Text);
        s.Parameters.AddWithValue("@password", TextBox2.Text);
        con.Open();
        int a = s.ExecuteNonQuery();
        con.Close();
        if (a > 0)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            Response.Write("<script>alert('Updated Successfully....')</script>");
            print();
        }
        else
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            Response.Write("<script>alert('Updated Successfully....')</script>");
            print();
        }
    }
}