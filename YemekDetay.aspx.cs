using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string yemekid = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {

            yemekid = Request.QueryString["yemekID"];//

            SqlCommand komut = new SqlCommand("SELECT yemekAd FROM Tbl_Yemek WHERE yemekID=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();

            }
            bgl.baglanti().Close();


            SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Yorum WHERE yemekID=@p2",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Yorum (yorumAdSoyad,yorumMail,yorumİcerik,yemekID) VALUES" +
                "(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtyorumADS.Text);
            komut.Parameters.AddWithValue("@p2", txtyorumMail.Text);
            komut.Parameters.AddWithValue("@p3", txtYorumIcerik.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}