using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class anasayfa : System.Web.UI.Page
{

    sqlsinif bgl = new sqlsinif();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        

        SqlCommand komut = new SqlCommand("select distinct kullanicilar.kullaniciadi,kullanicilar.kullanicisoyadi,count(kitapokunma.kitapid) as sayı from kitapokunma inner join kullanicilar on kitapokunma.kullaniciid=kullanicilar.kullaniciid where kitapid in (select kitapid from kitapokunma where kullaniciid=" + Session["kullaniciid"].ToString()+") group by kitapokunma.kitapid,kullanicilar.kullaniciadi,kullanicilar.kullanicisoyadi", bgl.baglanti());
        
        SqlDataReader dr = komut.ExecuteReader();

      

        DataList4.DataSource = dr;
        DataList4.DataBind();

        


    }


}