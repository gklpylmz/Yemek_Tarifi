using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifPaylas_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Tarif (tarifAd,tarifMalzeme,tarifYapilis,tarifResim,tarifKisi,tarifKisiMail)" +
                "VALUES (@p1,@p2,@p3,@p4,@p5,@p6)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtTarifAd.Text);
            komut.Parameters.AddWithValue("@p2",txtTarifMalzeme.Text);
            komut.Parameters.AddWithValue("@p3",txtTarifYapilis.Text);
            komut.Parameters.AddWithValue("@p4",flupResim.FileName);
            komut.Parameters.AddWithValue("@p5",txtTarifSahibi.Text);
            komut.Parameters.AddWithValue("@p6",txtMailAdresi.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
     
        }
    }
}