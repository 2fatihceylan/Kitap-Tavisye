using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class kullanıcıcprofil : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string kullaniciid;
    protected void Page_Load(object sender, EventArgs e)
    {
        kullaniciid = Request.QueryString["kullaniciid"];


        SqlCommand komut = new SqlCommand("select kullaniciadi,kullanicisoyadi,kullaniciresim from kullanicilar where kullaniciid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", kullaniciid);
        SqlDataReader dr = komut.ExecuteReader();

        while (dr.Read())
        {
            Label2.Text = dr[0].ToString();
            Label3.Text = dr[1].ToString();

        }
        bgl.baglanti().Close();




        SqlCommand komut2 = new SqlCommand("select * from kitapokunma join kitaplar on kitapokunma.kitapid=kitaplar.kitapid where kullaniciid=@p1", bgl.baglanti());

        komut2.Parameters.AddWithValue("@p1", kullaniciid);

        SqlDataReader dr2 = komut2.ExecuteReader();

        DataList4.DataSource = dr2;
        DataList4.DataBind();

        SqlCommand komut3 = new SqlCommand("select * from kitaplar inner join kitappuan on kitaplar.kitapid=kitappuan.kitapid where kullaniciid=@p1", bgl.baglanti());

        komut3.Parameters.AddWithValue("@p1", kullaniciid);

        SqlDataReader dr3 = komut3.ExecuteReader();
        DataList5.DataSource = dr3;
        DataList5.DataBind();


        SqlCommand komut4 = new SqlCommand("select * from kitaplar inner join kitapinceleme on kitaplar.kitapid=kitapinceleme.kitapid where kullaniciid=@p1",bgl.baglanti());

        komut4.Parameters.AddWithValue("@p1", kullaniciid);

        SqlDataReader dr4 = komut4.ExecuteReader();
        DataList6.DataSource = dr4;
        DataList6.DataBind();


        SqlCommand komut5 = new SqlCommand("select * from kitaplar inner join kitapalinti on kitaplar.kitapid=kitapalinti.kitapid where kullaniciid=@p1", bgl.baglanti());

        komut5.Parameters.AddWithValue("@p1", kullaniciid);

        SqlDataReader dr5 = komut5.ExecuteReader();
        DataList7.DataSource = dr5;
        DataList7.DataBind();


        SqlCommand komut6 = new SqlCommand("select * from kullanicilar where kullaniciid=@p1", bgl.baglanti());
        komut6.Parameters.AddWithValue("@p1", kullaniciid);
        SqlDataReader dr6 = komut6.ExecuteReader();
        DataList8.DataSource = dr6;
        DataList8.DataBind();

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("iletişim.aspx?kime="+kullaniciid+"");
    }
}