using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];

        SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader oku = komut.ExecuteReader();
        while (oku.Read())
        {
            Label3.Text = oku[0].ToString();
        }
        bgl.baglanti().Close();

        //Yorumlar Listeleme

        SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where yemekid=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr = komut2.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@AdSoyad,@Mail,@Yorumİcerik,@id)",bgl.baglanti());
        komut.Parameters.AddWithValue("@AdSoyad", TextBox1.Text);
        komut.Parameters.AddWithValue("@Mail", TextBox2.Text);
        komut.Parameters.AddWithValue("@Yorumİcerik", TextBox3.Text);
        komut.Parameters.AddWithValue("@id", yemekid);

        komut.ExecuteNonQuery();
      
        bgl.baglanti().Close();


    }
}