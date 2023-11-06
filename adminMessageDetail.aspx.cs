using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class adminMessageDetail : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["messageID"];

            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Message WHERE messageID=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                Label1.Text = dr[1].ToString();
                Label2.Text= dr[2].ToString();
                Label3.Text= dr[3].ToString();
                TextBox1.Text= dr[4].ToString();
            }
        }
    }
}