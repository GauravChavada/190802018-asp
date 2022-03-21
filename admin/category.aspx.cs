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
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [category]",con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void insert(object sender, EventArgs e)
    {
        if (Button1.Text == "Update")
        {
            SqlCommand s = new SqlCommand("UPDATE [category] SET [c_name] = @name WHERE [c_id] =" + ViewState["c_id"].ToString(), con);
            s.Parameters.AddWithValue("@name", TextBox1.Text);
            
            con.Open();
            int a = s.ExecuteNonQuery();
            con.Close();
            if (a > 0)
            {
                TextBox1.Text = string.Empty;
                
                Response.Write("<script>alert('Updated Successfully....')</script>");
                print();
            }
            else
            {
                TextBox1.Text = string.Empty;
              
                Response.Write("<script>alert('Updated Successfully....')</script>");
                print();
            }
            Button1.Text = "Insert";
        }
        else
        {


            SqlCommand s = new SqlCommand("INSERT INTO [category] ([c_name]) VALUES (@nm)", con);
            s.Parameters.AddWithValue("@nm", TextBox1.Text.Trim());
            con.Open();
            int a = s.ExecuteNonQuery();
            if (a > 0)
            {
                TextBox1.Text = string.Empty;
                print();
                Response.Write("<script>alert('Data Inserted Successfully')</script>");

            }
            else
            {
                TextBox1.Text = string.Empty;

                Response.Write("<script>alert('Error')</script>");

            }
            con.Close();

        }
        
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button b = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [category] WHERE [c_id]=" + b.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        ViewState["c_id"] = b.CommandArgument;
        Button1.Text = "Update";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [category] WHERE [c_id]=@id", con);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();
        if (s == 1)
        {
            Response.Write("<script>alert('Data Deleted')</script>");
            print();
        }
        else
        {
            Response.Write("<script>alert('Data Cannot Deleted')</script>");
            print();
        }
    }
    
}