using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class populeryazarlar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut3 = new SqlCommand("select top 20 kitaplar.kitapyazari,kitaplar.yazarid,kitaplar.kitapid, count(kitapokunma.kitapid) as sayı from kitapokunma inner join kitaplar on kitapokunma.kitapid=kitaplar.kitapid group by kitapokunma.kitapid,kitaplar.kitapyazari,kitaplar.yazarid,kitaplar.kitapid", bgl.baglanti());

        SqlDataReader oku3 = komut3.ExecuteReader();
        DataList3.DataSource = oku3;
        DataList3.DataBind();

    }
}