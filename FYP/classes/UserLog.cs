using FYP.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FYP.classes
{
    public class UserLog
    {
        public string Username { get; set; }
        public int VideoID { get; set; }
        public string VideoCat { get; set; }
        public int Rating { get; set; }

       

       // private string userEmotion;
       // private recommendation Recommendation;
       // private string date;

        public Boolean storeEmotion(string emotion)
        {
            Boolean status = false;
            database db = database.Instance();
            db.storeEmotion(emotion);
            return status;
        }

        public Boolean storeRating(string id)
        {
            Boolean status = false;
            database db = database.Instance();
            db.storeRating(id);
            return status;
        }


    }
}