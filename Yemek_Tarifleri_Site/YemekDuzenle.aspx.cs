using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDüzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * from tbl_Yemekler where yemekid=@p1 ", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();
        }
       
    


        if (Page.IsPostBack == false)
        {
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader oku = komut2.ExecuteReader();
            
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            
            DropDownList1.DataSource = oku;
            DropDownList1.DataBind();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand komut3 = new SqlCommand("update tbl_Yemekler set yemekAd=@p1, YemekMalzeme=@p2, Yemektarifi=@p3, Kategoriid=@p4 where yemekid=@p5", bgl.baglanti());

        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.Parameters.AddWithValue("@p5", id);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();



    }
}