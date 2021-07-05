using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class yöneticigiriş : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from yonetici where yoneticiadi=@p1 and yoneticiparola=@p2", bgl.baglanti());

        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);

        SqlDataReader dr = komut.ExecuteReader();

        if (dr.Read())
        {
            


            Response.Redirect("eklesil.aspx");
        }
        else
        {
            Label1.Text = "Kullanıcı Adı veya Şifresi yanlış";
        }

    }
}