using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi
{
    public partial class adminKategori : System.Web.UI.Page
    {
        SqlSinifi bgl = new SqlSinifi();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Page.IsPostBack==false)
            {
                islem = Request.QueryString["islem"];
                id = Request.QueryString["kategoriID"];
            }


            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategori",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem=="sil")
            {
                SqlCommand komutsil = new SqlCommand("DELETE FROM Tbl_Kategori WHERE kategoriID=@p1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Kategori (kategoriAd) VALUES (@p1)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtKategoriAd.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}