using FYP.classes;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FYP.Controller
{
    public class database
    {
        private static database _instance;
        protected database()
        {
        }
        public static database Instance()
        {
          if (_instance == null)
          {
              _instance = new database();
          }
          return _instance;
        }

        public Boolean Signup(string fs,string ls,string us,string pass,string email,string age,string gender)
        {
            Boolean status = false;
            string MyConnection2 = "datasource=localhost;port=3306;username=root;password=HM140121";
            MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
            try{
                string Query = "insert into moods.UserProfile(firstname , lastname,username,password,email,age,gender) values('" + fs + "','" + ls + "','" + us + "','" + pass + "','" + email + "','" + age + "','" + gender + "');";
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MySqlDataReader MyReader2;
                MyConn2.Open();
                MyReader2 = MyCommand2.ExecuteReader();     // Here our query will be executed and data saved into the database.  
                status = true;
            }
            catch (Exception ex){
                status = false;
            }
            finally{
                MyConn2.Close();
            }
            return status;           
        }

        public Boolean SaveLikes(string like)
        {
            string username = HttpContext.Current.Session["sessionName"].ToString();
            Boolean status = false;
            string MyConnection2 = "datasource=localhost;port=3306;username=root;password=HM140121";
            MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
            try{
                string Query = "insert into moods.UserLikes(username , likeTag) values('"+username+"','" + like + "');";
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MySqlDataReader MyReader2;
                MyConn2.Open();
                MyReader2 = MyCommand2.ExecuteReader();     // Here our query will be executed and data saved into the database.  
                status = true;
            }
            catch (Exception ex){
                status = false;
            }
            finally{
                MyConn2.Close();
            }
            return status;           
        }


        public Dictionary<string, List<UserLog>> recommendVideos()
        {

            List<UserLog> Log;
            string username = HttpContext.Current.Session["sessionName"].ToString();
            Dictionary<string, List<UserLog>> UserLog = new Dictionary<string, List<classes.UserLog>>();
            string[] types = { "tech", "sports", "fashion","geography" };
            string connection = "datasource=localhost;port=3306;username=root;password=HM140121";
            for (int i=0;i<4;i++)
            {
                MySqlDataReader reader;

                MySqlConnection conn = new MySqlConnection(connection);
                MySqlCommand cmd;
                conn.Open();
         
                string Query = "select * from moods.UserLog1 where VideoCat = '"+types[i]+"' ";
                cmd= new MySqlCommand(Query, conn);
                Log = new List<UserLog>();

                try
                {
                    
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        int vvidID = Int32.Parse(reader.GetString("videoID"));
                        int vvidRate =Int32.Parse(reader.GetString("Rating"));
                        Log.Add(new UserLog() { Username = reader.GetString("username"), VideoID = vvidID, VideoCat = reader.GetString("videoCat"),Rating=vvidRate });
                    }

                    UserLog.Add(types[i], Log);
                }
                catch (Exception msg) { }
                conn.Close();

            }
         
            /*
            string username = HttpContext.Current.Session["sessionName"].ToString();
            List<string> data = new List<string>();
            Boolean status = false;
            try
            {
                string connection = "datasource=localhost;port=3306;username=root;password=HM140121";
                string Query = "select * from moods.Videos a , moods.userLikes b where b.username  = '"+username+"'and a.videoTag = b.likeTag;";
                MySqlConnection conn = new MySqlConnection(connection);
                MySqlCommand cmd = new MySqlCommand(Query, conn);
                MySqlDataReader reader;
                try
                {
                    conn.Open();
                    reader = cmd.ExecuteReader();
                    while (reader.Read()){
                        string videolink = reader.GetString("videoLink");
                        string videoID = reader.GetString("video_id");
                        string videoCat = reader.GetString("VideoTag");

                        data.Add(videolink);
                        data.Add(videoID);
                        data.Add(videoCat);
 
                    }
                    conn.Close();
                }
                catch (Exception msg){}
                status = true;
            }
            catch (Exception ex){
                status = false;
            }*/
            return UserLog;
        }


        public List<string> GetVideos(List<string> cat)
        {
            
            List<string> data = new List<string>();
            try
            {
                foreach(var i in cat)
                {
                    string connection = "datasource=localhost;port=3306;username=root;password=HM140121";
                    string Query = "select * from moods.Videos where VideoTag  = '" + i + "';";
                    MySqlConnection conn = new MySqlConnection(connection);
                    MySqlCommand cmd = new MySqlCommand(Query, conn);
                    MySqlDataReader reader;
                    try
                    {
                        conn.Open();
                        reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            string videolink = reader.GetString("videoLink");
                            string videoID = reader.GetString("video_id");
                            string videoCat = reader.GetString("VideoTag");

                            data.Add(videolink);
                            data.Add(videoID);
                            data.Add(videoCat);
 
                        }
                        conn.Close();
                    }
                    catch (Exception msg) { }
                }
            }
            catch (Exception ex)
            {
            }
            return data;
        }





        public List<string> Blogs()
        {
            string username = HttpContext.Current.Session["sessionName"].ToString();

            List<string> data = new List<string>();
            Boolean status = false;
            try
            {
                string connection = "datasource=localhost;port=3306;username=root;password=HM140121";
                string Query = "select * from moods.Blogs a , moods.userLikes b where b.username  = '"+username+"'and a.BlogCat = b.likeTag;";
                MySqlConnection conn = new MySqlConnection(connection);
                MySqlCommand cmd = new MySqlCommand(Query, conn);
                MySqlDataReader reader;
                try
                {
                    conn.Open();
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        string blogtext = reader.GetString("BlogText");
                        string BlogCat = reader.GetString("BlogCat");

                        data.Add(blogtext);
                        data.Add(BlogCat);
                       
                    }
                    conn.Close();
                }
                catch (Exception msg) { }
                status = true;
            }
            catch (Exception ex)
            {
                status = false;
            }
            return data;
        }



        public Boolean storeEmotion(string emotion)
        {
            string username = HttpContext.Current.Session["sessionName"].ToString();

            Boolean status = false;
            string MyConnection2 = "datasource=localhost;port=3306;username=root;password=HM140121";
            var time = DateTime.Now;
            MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
            try
            {
                string Query = "insert into moods.Emotions(username , emotion,DateOf) values('"+username+"','" + emotion + "','" + time + "');";
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MySqlDataReader MyReader2;
                MyConn2.Open();
                MyReader2 = MyCommand2.ExecuteReader();     // Here our query will be executed and data saved into the database.  
                status = true;
            }
            catch (Exception ex){
                status = false;
            }
            finally{
                MyConn2.Close();
            }
            return status;
        }



        public Boolean storeRating(string id)
        {
            string username = HttpContext.Current.Session["sessionName"].ToString();

            Boolean status = false;
            string MyConnection2 = "datasource=localhost;port=3306;username=root;password=HM140121";
            var time = DateTime.Now;
            MySqlConnection MyConn2 = new MySqlConnection(MyConnection2);
            try
            {

                string[] rate = id.Split('_');
                string emotion = HttpContext.Current.Session["Emotion"].ToString();
                string Query = "insert into moods.UserLog1(username , VideoID,VideoCat,Rating,Emotion,DateOf) values('"+username+"','" + rate[0] + "','" + rate[1] + "','" + rate[2] + "','" + emotion + "','" + time + "');";
                MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
                MySqlDataReader MyReader2;
                MyConn2.Open();
                MyReader2 = MyCommand2.ExecuteReader();     // Here our query will be executed and data saved into the database.  
                status = true;
            }
            catch (Exception ex){
                status = false;
            }
            finally{
                MyConn2.Close();
            }
            return status;
        }



        public List<string> recommendHappyVideos()
        {
            List<string> data = new List<string>();
         /*   List<string> Like_Tag = recommendVideos();
            for (int i = 0; i < Like_Tag.Count; i++)
            {
                data.Add(Like_Tag[i]);
            }

            Boolean status = false;
            try
            {
                string connection = "datasource=localhost;port=3306;username=root;password=HM140121";
                string Query = "select * from moods.Videos a  where a.video_id not in (select VideoID from moods.userlog);";
                MySqlConnection conn = new MySqlConnection(connection);
                MySqlCommand cmd = new MySqlCommand(Query, conn);
                MySqlDataReader reader;
                try
                {

                    conn.Open();
                    reader = cmd.ExecuteReader();
                    while (reader.Read()){
                        string videolink = reader.GetString("videoLink");
                        string videoID = reader.GetString("video_id");
                        string videoCat = reader.GetString("VideoTag");
                        data.Add(videolink);
                        data.Add(videoID);
                        data.Add(videoCat);

                    }
                    conn.Close();
                }
                catch (Exception msg){}
                status = true;
            }
            catch (Exception ex){
                status = false;
            }*/
            return data;
        }

        
        
        
        }
}