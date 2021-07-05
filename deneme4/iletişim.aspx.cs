using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class iletişim : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    string gidenid;
    protected void Page_Load(object sender, EventArgs e)
    {
        gidenid = Request.QueryString["kime"];

        SqlCommand komut2 = new SqlCommand("select * from mesajlar inner join kullanicilar on mesajlar.gidenid=kullanicilar.kullaniciid where gidenid=@p6", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p6", gidenid);
        SqlDataReader dr = komut2.ExecuteReader();
        DataList4.DataSource = dr;
        DataList4.DataBind();

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into mesajlar (gidenid,gonderenid,baslik,mesaj,tarih) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());

        komut.Parameters.AddWithValue("@p1", gidenid);
        komut.Parameters.AddWithValue("@p2", Session["kullaniciid"].ToString());
        komut.Parameters.AddWithValue("@p3", TextBox4.Text);
        komut.Parameters.AddWithValue("@p4", TextBox5.Text);
        komut.Parameters.AddWithValue("@p5", DateTime.Now.ToString());

        komut.ExecuteNonQuery();

        Response.Redirect("iletişim.aspx");

       

    }
}