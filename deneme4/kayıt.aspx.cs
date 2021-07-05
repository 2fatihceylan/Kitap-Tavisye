using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class kayıt : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/resim/" + FileUpload1.FileName));



        SqlCommand komut = new SqlCommand("insert into kullanicilar(kullaniciadi,kullanicisoyadi,kullanicinickname,kullaniciparola,kullanicicinsiyet,kullanicidogumtarihi,kullanicirsm) values (@p1,@p2,@p3,@p4,@p5,@p6,@p7)",bgl.baglanti());

        string deger="";
        if (RadioButton1.Checked==true&&RadioButton2.Checked==false)
        {
            deger = "Erkek";
        }
        else if (RadioButton2.Checked==true&&RadioButton1.Checked==false)
        {
            deger = "Kadın";
        }
        else
        {
            deger = "Belirtilmedi";
        }
        komut.Parameters.AddWithValue("@p1",TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", TextBox4.Text);
        komut.Parameters.AddWithValue("@p5",deger);
        komut.Parameters.AddWithValue("@p6",TextBox5.Text);
        komut.Parameters.AddWithValue("@p7", "~/resim/" + FileUpload1.FileName);
        komut.ExecuteNonQuery();
        Label2.Text = "Kayıt Tamamlandı";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
            Label2.Text = "Tamamlandı..";

        }

        else
        {
            Label2.Text = "resim ekleyiniz..";
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

