using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetau : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id; 
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategoriid"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler where kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku[1].ToString();
                TextBox2.Text = oku[2].ToString();

            }
            bgl.baglanti().Close();
        }
       


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3", bgl.baglanti());

        komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut2.Parameters.AddWithValue("@p3", id);

        komut2.ExecuteNonQuery();

        
        bgl.baglanti().Close();


    }
}