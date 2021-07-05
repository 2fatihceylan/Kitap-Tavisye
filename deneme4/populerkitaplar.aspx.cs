using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class populerkitaplar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlCommand komut = new SqlCommand("select top 20 kitaplar.kitapadi,kitaplar.kitapid, count(kitapokunma.kitapid) as sayı from kitapokunma inner join kitaplar on kitapokunma.kitapid=kitaplar.kitapid group by kitapokunma.kitapid,kitaplar.kitapadi,kitaplar.kitapid ", bgl.baglanti());

        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
        
    }
}