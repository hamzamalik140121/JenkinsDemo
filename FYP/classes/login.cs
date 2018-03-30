using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
namespace FYP.classes
{
    public class login
    {
         public string email;
         public string username;
         public string password;

         public login()
         { }

        public Boolean LoginCheck(string username , string pass)
         {
             List<string> data = new List<string>();
             Boolean status = false;
             try
             {
                 string connection = "datasource=localhost;port=3306;username=root;password=HM140121";
                 string Query = "select * from moods.UserProfile where username  = '" + username + "'and password = '" + pass + "';";
                 MySqlConnection conn = new MySqlConnection(connection);
                 MySqlCommand cmd = new MySqlCommand(Query, conn);
                 MySqlDataReader reader;
                 try
                 {
                     conn.Open();
                     reader = cmd.ExecuteReader();
                     while (reader.Read())
                     {

                         string user = reader.GetString("Username");

                         data.Add(user);

                     }
                     conn.Close();
                 }
                 catch (Exception msg)
                 {
                 } 
                 status = true;
             }
             catch (Exception ex)
             {
                 status = false;
             }  

             return status;
         }


    }
}