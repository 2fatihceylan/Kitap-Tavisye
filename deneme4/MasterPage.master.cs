using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class MasterPage : System.Web.UI.MasterPage
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string arama = TextBox1.Text;
        SqlCommand komut = new SqlCommand("select * from kitaplar where kitapadi like '%"+arama+"%'", bgl.baglanti());

       SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string arama2 = TextBox2.Text;
        SqlCommand komut2 = new SqlCommand("select yazaradi,yazarsoyadi,yazarid from yazarlar where yazaradi like '%"+arama2+"%'",bgl.baglanti());
        SqlDataReader oku2 = komut2.ExecuteReader();
        DataList2.DataSource = oku2;
        DataList2.DataBind();


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string arama3 = TextBox3.Text;
        SqlCommand komut3 = new SqlCommand("select kullaniciadi,kullanicisoyadi,kullaniciid from kullanicilar where kullaniciadi like '%"+arama3+"%'", bgl.baglanti());
        SqlDataReader oku3 = komut3.ExecuteReader();
        DataList3.DataSource = oku3;
        DataList3.DataBind();


    }
}
