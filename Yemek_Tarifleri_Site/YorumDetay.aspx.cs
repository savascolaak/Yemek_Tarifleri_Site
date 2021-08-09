using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];
        if (Page.IsPostBack == false)
        {


            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd From tbl_Yorumlar inner join tbl_Yemekler on tbl_Yorumlar.yemekid=tbl_Yemekler.yemekid where yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = komut.ExecuteReader();


            while (dr.Read())
            {
                txtAd.Text = dr[0].ToString();
                txtMail.Text = dr[1].ToString();
                txticerik.Text = dr[2].ToString();
                txtYemek.Text = dr[3].ToString();


            }
            bgl.baglanti().Close();

        }
        

       
    }

    protected void btnOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update tbl_Yorumlar set yorumicerik=@p1,Yorumonay=@p2 where yorumid=@p3", bgl.baglanti());

        komut.Parameters.AddWithValue("@p1", txticerik.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", id);

        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}