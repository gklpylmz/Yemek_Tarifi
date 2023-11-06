using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class kategoriDetay : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string kategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["kategoriID"];
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemek WHERE kategoriID=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",kategoriID);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}