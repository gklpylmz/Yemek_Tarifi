using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class adminYemek : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string islem;
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["yemekID"];
                islem = Request.QueryString["islem"];
            }



                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemek", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();

                SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategori", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                drpdlYemekKategori.DataTextField = "kategoriAd";
                drpdlYemekKategori.DataValueField = "kategoriID";
                drpdlYemekKategori.DataSource = dr2;
                drpdlYemekKategori.DataBind();
                if (islem == "sil")
                {
                    SqlCommand komutsil = new SqlCommand("DELETE FROM Tbl_Yemek WHERE yemekID=@p1", bgl.baglanti());
                    komutsil.Parameters.AddWithValue("@p1", id);
                    komutsil.ExecuteNonQuery();
                    bgl.baglanti().Close();
                }
            

            

        }

            

            

           

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yemek (yemekAd,yemekMalzeme,yemekTarif,kategoriID) VALUES" +
                " (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2",txtYemekMalzeme.Text); 
            komut.Parameters.AddWithValue("@p3",txtYemekTarif.Text); 
            komut.Parameters.AddWithValue("@p4",drpdlYemekKategori.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("UPDATE Tbl_Kategori SET kategoriAdet=kategoriAdet+1 WHERE kategoriID=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",drpdlYemekKategori.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}