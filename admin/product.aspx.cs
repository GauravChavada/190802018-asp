using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection c=new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        print();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/admin/uploads/" + FileUpload1.FileName));
            SqlCommand s = new SqlCommand("INSERT INTO [product] ([name], [des], [price], [image]) VALUES (@nm, @desc, @price, @img)", c);
            s.Parameters.AddWithValue("@nm", TextBox1.Text.Trim());
            s.Parameters.AddWithValue("@desc", TextBox2.Text.Trim());
            s.Parameters.AddWithValue("@price", TextBox3.Text.Trim());
            s.Parameters.AddWithValue("@img", FileUpload1.FileName);
            c.Open();
            int a = s.ExecuteNonQuery();
            if (a > 0)
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
                print();
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                Response.Write("<script>alert('Error')</script>");
                print();
            }
            c.Close();
        }
        else
        {
            Response.Write("<script>alert('Please Select A Picture')</script>");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlCommand cmd = new SqlCommand("DELETE FROM [product] WHERE [id]=@id", c);
        cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
        c.Open();
        int s = cmd.ExecuteNonQuery();
        c.Close();
        if (s == 1)
        {
            Literal11.Text = "Data Deleted";
            print();
        }
        else
        {
           Literal11.Text = "Data Not Deleted";
            print();
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Button b = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [product] WHERE [id]=" + b.CommandArgument, c);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        TextBox3.Text = dt.Rows[0][3].ToString();
        //FileUpload1.
        ViewState["id"] = b.CommandArgument;
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM [product]", c);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    
}