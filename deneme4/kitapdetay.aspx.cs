using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class kitapdetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string kitapid;
    string puan;
    protected void Page_Load(object sender, EventArgs e)
    {
        kitapid = Request.QueryString["kitapid"];

        SqlCommand komut = new SqlCommand("select kitapadi from kitaplar where kitapid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", kitapid);
        SqlDataReader dr = komut.ExecuteReader();

        while (dr.Read())
        {
            Label2.Text = dr[0].ToString();

        }
        bgl.baglanti().Close();


        SqlCommand komut3 = new SqlCommand("select kitaplar.kitaprsm,kitaplar.kitapyazari,kitaplar.kitapyayinevi,kitaplar.kitaptanitim,count(kitapokunma.kitapid) as sayı from kitapokunma inner join kitaplar on kitapokunma.kitapid=kitaplar.kitapid where kitaplar.kitapid=@p3 group by kitaplar.kitapyazari,kitaplar.kitapyayinevi,kitaplar.kitaptanitim,kitaplar.kitaprsm", bgl.baglanti());

        komut3.Parameters.AddWithValue("@p3", kitapid);
        SqlDataReader dr3 = komut3.ExecuteReader();
        DataList1.DataSource = dr3;
        DataList1.DataBind();

        SqlCommand komut7 = new SqlCommand("select avg(puan) as ortalamapuan from kitappuan where kitapid=@p11", bgl.baglanti());

        komut7.Parameters.AddWithValue("@p11", kitapid);
        SqlDataReader dr5 = komut7.ExecuteReader();
        while (dr5.Read())
        {
            Label13.Text = dr5[0].ToString();
        }


        SqlCommand komut2 = new SqlCommand("select * from kitapinceleme join kullanicilar on kitapinceleme.kullaniciid=kullanicilar.kullaniciid where kitapid=@p2", bgl.baglanti());

        komut2.Parameters.AddWithValue("@p2", kitapid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

        SqlCommand komut8 = new SqlCommand("select * from kitapalinti inner join kullanicilar on kitapalinti.kullaniciid=kullanicilar.kullaniciid where kitapid=@p2", bgl.baglanti());
        komut8.Parameters.AddWithValue("@p2", kitapid);
        SqlDataReader dr6 = komut8.ExecuteReader();
        DataList4.DataSource = dr6;
        DataList4.DataBind();

        SqlCommand komut9 = new SqlCommand("select puan from kitappuan where kullaniciid=@p15 and kitapid=@p16", bgl.baglanti());
        komut9.Parameters.AddWithValue("@p15", Session["kullaniciid"].ToString());
        komut9.Parameters.AddWithValue("@p16", kitapid);

        SqlDataReader dr7 = komut9.ExecuteReader();
        if (dr7.Read())
        {
            Label18.Text = dr7[0].ToString() + " puan verdiniz";
        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand komut5 = new SqlCommand("select * from kitapokunma where kullaniciid=@p9 and kitapid=@p10", bgl.baglanti());
        komut5.Parameters.AddWithValue("@p9", Session["kullaniciid"].ToString());
        komut5.Parameters.AddWithValue("@p10", kitapid);

        SqlDataReader dr4 = komut5.ExecuteReader();

        if (dr4.Read())
        {
            Label11.Text = "İşaretli";
        }
        else
        {
            SqlCommand komut4 = new SqlCommand("insert into kitapokunma(kullaniciid,kitapid) values (@p4,@p5)", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p4", Session["kullaniciid"].ToString());
            komut4.Parameters.AddWithValue("@p5", kitapid);

            komut4.ExecuteNonQuery();
            Label11.Text = "İşaretlendi";

        }


    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand komut6 = new SqlCommand("insert into kitapinceleme(kullaniciid,kitapid,inceleme) values (@p6,@p7,@p8)", bgl.baglanti());
        komut6.Parameters.AddWithValue("@p6", Session["kullaniciid"].ToString());
        komut6.Parameters.AddWithValue("@p7", kitapid);
        komut6.Parameters.AddWithValue("@p8", TextBox4.Text);
        komut6.ExecuteNonQuery();

        TextBox4.Text = "";
        Label12.Text = "Kaydedildi";

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlCommand komut9 = new SqlCommand("select puan from kitappuan where kullaniciid=@p15 and kitapid=@p16", bgl.baglanti());
        komut9.Parameters.AddWithValue("@p15", Session["kullaniciid"].ToString());
        komut9.Parameters.AddWithValue("@p16", kitapid);

        SqlDataReader dr7 = komut9.ExecuteReader();
        if (dr7.Read())
        {
            puan = RadioButtonList1.SelectedItem.Value.ToString();
            SqlCommand komut10 = new SqlCommand("update kitappuan set puan=@p17 where kullaniciid=@p15 and kitapid=@p16", bgl.baglanti());
            komut10.Parameters.AddWithValue("@p17", puan);
            komut10.Parameters.AddWithValue("@p15", Session["kullaniciid"].ToString());
            komut10.Parameters.AddWithValue("@p16", kitapid);
            komut10.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        else
        {


            puan = RadioButtonList1.SelectedItem.Value.ToString();
            SqlCommand komut8 = new SqlCommand("insert into kitappuan(kullaniciid,kitapid,puan) values (@p12,@p13,@p14)", bgl.baglanti());
            komut8.Parameters.AddWithValue("@p12", Session["kullaniciid"].ToString());
            komut8.Parameters.AddWithValue("@p13", kitapid);
            komut8.Parameters.AddWithValue("@p14", puan);
            komut8.ExecuteNonQuery();
            Label18.Text = "kaydedildi";
        }
    }


    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlCommand komut7 = new SqlCommand("insert into kitapalinti(kullaniciid,kitapid,sayfano,cumle) values (@p12,@p13,@p14,@p15)", bgl.baglanti());
        komut7.Parameters.AddWithValue("@p12", Session["kullaniciid"].ToString());
        komut7.Parameters.AddWithValue("@p13", kitapid);
        komut7.Parameters.AddWithValue("@p14", TextBox6.Text);
        komut7.Parameters.AddWithValue("@p15", TextBox5.Text);
        komut7.ExecuteNonQuery();
        TextBox5.Text = "";
        TextBox6.Text = "";
        Label17.Text = "kaydedildi";



    }




}