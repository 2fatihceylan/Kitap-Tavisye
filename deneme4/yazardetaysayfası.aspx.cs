using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yazardetaysayfası : System.Web.UI.Page
{

    sqlsinif bgl = new sqlsinif();
    string yazarid;
    protected void Page_Load(object sender, EventArgs e)
    {
        yazarid = Request.QueryString["yazarid"];

        SqlCommand komut = new SqlCommand("select yazaradi,yazarsoyadi from yazarlar where yazarid=@p1",bgl.baglanti());

        komut.Parameters.AddWithValue("@p1", yazarid);
        SqlDataReader dr = komut.ExecuteReader();

        while (dr.Read())
        {
            Label2.Text = dr[0].ToString();
            Label6.Text = dr[1].ToString();

        }
        bgl.baglanti().Close();


        SqlCommand komut2 = new SqlCommand("select yazardogumtarihi,yazardogumyeri,yazarolumtarihi from yazarlar where yazarid=@p2", bgl.baglanti());

        komut2.Parameters.AddWithValue("@p2", yazarid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList4.DataSource = dr2;
        DataList4.DataBind();

        
        SqlCommand komut3 = new SqlCommand("select * from kitaplar where yazarid=@p3",bgl.baglanti());
       komut3.Parameters.AddWithValue("@p3", yazarid);
        SqlDataReader dr3 = komut3.ExecuteReader();
        DataList5.DataSource = dr3;
        DataList5.DataBind();

    }
}