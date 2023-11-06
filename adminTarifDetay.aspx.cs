using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    
    public partial class adminTarifDetay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id ="";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["tarifID"];

            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Tarif WHERE tarifID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txtYemekAd0.Text = dr[1].ToString();
                    txtYemekMalzeme0.Text = dr[2].ToString();
                    txtYemekTarif0.Text = dr[3].ToString();
                    txtYemekAd1.Text = dr[5].ToString();
                    txtYemekAd2.Text = dr[6].ToString();


                }
                bgl.baglanti().Close();

                if (!IsPostBack)
                {
                    SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategori", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "kategoriAd";
                    DropDownList1.DataValueField = "kategoriID";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }
           

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Tarif SET tarifDurum=1 WHERE tarifID=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("INSERT INTO Tbl_Yemek (yemekAd,yemekMalzeme,yemekTarif,kategoriID) VALUES " +
                "(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",txtYemekAd0.Text);
            komut2.Parameters.AddWithValue("@p2",txtYemekMalzeme0.Text);
            komut2.Parameters.AddWithValue("@p3",txtYemekTarif0.Text);
            komut2.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}