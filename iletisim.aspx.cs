using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class iletisim : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Message (messageSender,messageMail,messageHead,messageContent) VALUES" +
                "(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2",txtMail.Text);
            komut.Parameters.AddWithValue("@p3",txtKonu.Text);
            komut.Parameters.AddWithValue("@p4",txtMesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}