using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    
    public partial class adminYorumDetay : System.Web.UI.Page
    {
        string id;
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorumID"];
            if (!IsPostBack)
            {
                

                SqlCommand komut = new SqlCommand("SELECT yorumAdSoyad,yorumMail,yorumİcerik,yemekAd FROM Tbl_Yorum" +
                " INNER JOIN Tbl_Yemek" +
                " ON Tbl_Yorum.yemekID=Tbl_Yemek.yemekID" +
                " WHERE yorumID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    txtAdSoyad.Text = dr[0].ToString();
                    txtMail.Text = dr[1].ToString();
                    txtYorum.Text = dr[2].ToString();
                    txtYemek.Text += dr[3].ToString();

                }
                bgl.baglanti().Close();

            }
            
           
        }

        protected void btnOnay_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE Tbl_Yorum SET yorumOnay=@p1 WHERE yorumID=@p2",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", "True");
            komut.Parameters.AddWithValue("@p2",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}