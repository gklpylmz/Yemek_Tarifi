using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class adminYemekGuncelle : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yemekID"];
            if (!IsPostBack)
            {
                
                SqlCommand komut = new SqlCommand("SELECT yemekAd,yemekMalzeme,yemekTarif,kategoriID FROM Tbl_Yemek WHERE yemekID=@p1 ", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    txtYemekAd.Text = dr[1].ToString();
                    txtYemekMalzeme.Text = dr[2].ToString();
                    txtYemekTarif.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }

            if (!IsPostBack)
            {
                SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategori",bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                txtKategori.DataTextField = "kategoriAd";
                txtKategori.DataValueField = "kategoriID";

                txtKategori.DataSource = dr2;
                txtKategori.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yemek SET yemekAd=@p1,yemekMalzeme=@p2,yemekTarif=@p3,kategoriID=@p4" +
                " WHERE yemekID=@p5",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2",txtYemekMalzeme.Text);
            komut.Parameters.AddWithValue("@p3",txtYemekTarif.Text);
            komut.Parameters.AddWithValue("@p4",txtKategori.SelectedValue);
            komut.Parameters.AddWithValue("@p5",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yemek SET durum=0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komutG = new SqlCommand("UPDATE Tbl_Yemek SET durum=1 WHERE yemekID=@p1",bgl.baglanti());
            komutG.Parameters.AddWithValue("p1",id);
            komutG.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}