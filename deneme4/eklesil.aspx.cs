using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class eklesil : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["kitapid"];
            islem = Request.QueryString["islem"];

        }

        SqlCommand komut = new SqlCommand("select * from kitaplar", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //silmeişlemi
        if (islem=="sil")
        {
            SqlCommand komutsil = new SqlCommand("delete from kitaplar where kitapid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }





    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {

            FileUpload1.SaveAs(Server.MapPath("/resim/" + FileUpload1.FileName));

        SqlCommand komut = new SqlCommand("insert into kitaplar (kitapadi,kitapyazari,kitapyayinevi,kitaptanitim,kitaprsm) values (@p1,@p2,@p3,@p4,@p5)",bgl.baglanti());
       
        komut.Parameters.AddWithValue("@p1",TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", TextBox4.Text);
        komut.Parameters.AddWithValue("@p5", "~/resim/"+FileUpload1.FileName);

        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
            Label2.Text = "Tamamlandı..";

        }

        else
        {
            Label2.Text = "resim ekleyiniz..";
        }



    }
}