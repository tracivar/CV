using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Collections;

namespace WebDesignNew.App_Code
{
    public static class ConnectionClass
    {

        private static SqlConnection conn;
        private static SqlCommand command;

        static ConnectionClass()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["BloggersConnection"].ToString();
            conn = new SqlConnection(connectionString);
            command = new SqlCommand("", conn);
        }

        public static ArrayList GetBloggersByCountry(string bloggersCountry)
        {
            ArrayList list = new ArrayList();
            string query = string.Format("SELECT * FROM bloggers WHERE country like '{0}'", bloggersCountry);
            try
            {
                conn.Open();
                command.CommandText = query;
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    int id = reader.GetInt32(0);
                    string name = reader.GetString(1);
                    string country = reader.GetString(2);
                    string image = reader.GetString(3);
                    string review = reader.GetString(4);

                    bloggers bloggers = new bloggers(id, name, country, image, review);
                    list.Add(bloggers);
                }
            }
            finally
            {
                conn.Close();
            }

            return list;
        } 

    }
}