using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class yuksekpuanlıkitaplar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    
    protected void Page_Load(object sender, EventArgs e)
    {

       
        
            SqlCommand komut2 = new SqlCommand("select top 20 kitaplar.kitapadi,kitappuan.kitapid,avg(puan) as ort from kitappuan inner join kitaplar on kitappuan.kitapid=kitaplar.kitapid group by kitappuan.kitapid,kitaplar.kitapadi ", bgl.baglanti());
            

            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

    }
}