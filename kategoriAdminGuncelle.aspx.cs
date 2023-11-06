using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class kategoriAdminDetay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategoriID"];
            if (Page.IsPostBack==false)//Sayfayı bir kere yükledikten sonra bir daha yükleme
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategori WHERE kategoriID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtKategoriAd.Text = dr[1].ToString();
                    txtKategoriAdet.Text = dr[2].ToString();
                }
                bgl.baglanti().Close();
            }
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Kategori SET kategoriAd=@p1,kategoriAdet=@p2 WHERE kategoriID=@p3",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2", txtKategoriAdet.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}