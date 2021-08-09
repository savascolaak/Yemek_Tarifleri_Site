using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false ;

        SqlCommand komut = new SqlCommand("Select * from tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        bgl.baglanti().Close();

        SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader oku = komut2.ExecuteReader();

        DropDownList1.DataTextField = "KategoriAd";
        DropDownList1.DataValueField = "Kategoriid";

        DropDownList1.DataSource = oku;
        DropDownList1.DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand komut3 = new SqlCommand("insert into tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarifi,kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());

        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}