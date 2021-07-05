using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class giriş : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
       /* if (Request.QueryString["msg"] != null)
        {
            string mesaj = Request.QueryString["msg"].ToString();
            Response.Write(mesaj);
        }*/
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select kullaniciid from kullanicilar where kullanicinickname=@p1 and kullaniciparola=@p2",bgl.baglanti());
        
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
      
        SqlDataReader dr = komut.ExecuteReader();
        
        if (dr.Read())
        {
            Session["kullaniciid"] = dr["kullaniciid"].ToString();
            
            Response.Redirect("anasayfa.aspx");
        }
        else
        {
            Label1.Text = "Kullanıcı Adı veya Şifresi yanlış";
        }


    }
}