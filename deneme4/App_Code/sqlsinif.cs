using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// sqlsinif için özet açıklama
/// </summary>
public class sqlsinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ASUS\Desktop\websitesi ödevi\kitaplıkdeneme.mdf;Integrated Security=True");
        baglan.Open();
        return baglan;
        
    }
}