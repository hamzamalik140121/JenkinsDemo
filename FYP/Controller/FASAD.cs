using FYP.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FYP.Controller
{
    public class FASAD
    {
        private static FASAD _instance;
        public FASAD()
        {
        }
        public static FASAD Instance()
        {
          if (_instance == null)
          {
            _instance = new FASAD();
          }
          return _instance;
        }



        public UserProfile user = UserProfile.Instance();

        public Boolean signup(string fs,string ls,string us,string pass,string email,string age,string gender)
        {
            Boolean status = false;
            status = user.Signup(fs,ls, us,pass,email,age,gender);
            return status;
        }

        public Boolean LoginCheck(string us, string pass)
        {
            login Login = new login();
            Boolean status = false;
            status = Login.LoginCheck(us, pass);
            return status;
        }

        public Boolean SaveLikes(string Like)
        {
            Boolean status = false;
            status = user.SaveLikes(Like);
            return status;
        }

        public Boolean storeEmotion(string emo)
        {
            UserLog userlog = new UserLog();
            Boolean status = false;
            status = userlog.storeEmotion(emo);
            return status;
        }

        public Boolean storeRating(string id)
        {
            Boolean status = false;
            UserLog db = new UserLog();
            db.storeRating(id);
            return status;
        }










    }
}