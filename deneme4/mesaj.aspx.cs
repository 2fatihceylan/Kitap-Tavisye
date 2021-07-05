using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class mesaj : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from mesajlar inner join kullanicilar on mesajlar.gonderenid=kullanicilar.kullaniciid where gidenid=" + Session["kullaniciid"].ToString() + " ", bgl.baglanti());
       
        SqlDataReader oku = komut.ExecuteReader();
        DataList4.DataSource = oku;
        DataList4.DataBind();
      
       

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
     
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        
        
        
        SqlCommand komut2 = new SqlCommand("insert into mesajlar (gidenid,gonderenid,baslik,mesaj,tarih) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());

        komut2.Parameters.AddWithValue("@p1", TextBox6.Text);
        komut2.Parameters.AddWithValue("@p2", Session["kullaniciid"].ToString());
        komut2.Parameters.AddWithValue("@p3", TextBox4.Text);
        komut2.Parameters.AddWithValue("@p4", TextBox5.Text);
        komut2.Parameters.AddWithValue("@p5", DateTime.Now.ToString());

        komut2.ExecuteNonQuery();

        Response.Redirect("mesaj.aspx");

    }
}