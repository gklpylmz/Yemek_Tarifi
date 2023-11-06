using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifi
{
    public class SqlSinifi
    {

        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-IPR9NU0\\SQLEXPRESS;Initial Catalog=DB_YemekTarif;Integrated Security=True");
            baglan.Open();
            return baglan;
        }


    }
}