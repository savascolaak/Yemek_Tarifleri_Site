using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajBaslik,Mesajmail,Mesajicerik,MesajGonderen) values (@pd1,@pd2,@pd3,@pd4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@pd1", TextBox3.Text);
        komut.Parameters.AddWithValue("@pd2", TextBox2.Text);
        komut.Parameters.AddWithValue("@pd3", TextBox4.Text);
        komut.Parameters.AddWithValue("@pd4", TextBox1.Text);

        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}