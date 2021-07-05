using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class kitapdüzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["kitapid"];
        if (Page.IsPostBack==false)
        {

       
        SqlCommand komut = new SqlCommand("select * from kitaplar where kitapid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[3].ToString();
            TextBox3.Text = dr[4].ToString();
            TextBox4.Text = dr[7].ToString();
        }

        bgl.baglanti().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            FileUpload1.SaveAs(Server.MapPath("/resim/" + FileUpload1.FileName));

        SqlCommand komut = new SqlCommand("update kitaplar set kitapadi=@p1,kitapyazari=@p2,kitapyayinevi=@p3,kitaptanitim=@p4,kitaprsm=@p6 where kitapid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", TextBox4.Text);
        komut.Parameters.AddWithValue("@p5", id);
        komut.Parameters.AddWithValue("@p6", "~/resim/" + FileUpload1.FileName);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

            Label1.Text = "Tamamlandı..";
        }

        else
        {
            Label1.Text = "resim ekleyiniz..";
        }


    }
}