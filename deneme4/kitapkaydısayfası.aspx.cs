using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class kitapkaydısayfası : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string kitapid;
    protected void Page_Load(object sender, EventArgs e)
    {
       kitapid= Request.QueryString["kitapid"];
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Label2.Text = kitapid.ToString();
       
    }
}