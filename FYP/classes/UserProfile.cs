using FYP.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FYP.classes
{
    public class UserProfile
    {

        
        private static UserProfile _instance;
        protected UserProfile()
        {
        }
        public static UserProfile Instance()
        {
          if (_instance == null)
          {
            _instance = new UserProfile();
          }
          return _instance;
        }


        private string userID;
        private string firstname;
        private string lastname;
        private string username;
        private string password;
        private string email;
        private string age;
        private string gender;
        private string[] interests=new string[10];


        public database db = database.Instance();

        public Boolean Signup(string fs,string ls,string us,string pass, string email,string age,string gen)
        {
            Boolean status = false;
            status = db.Signup(fs, ls, us, pass, email, age, gender);
            return status;
        }


        public Boolean SaveLikes(string like)
        {
            Boolean status = false;
            status = db.SaveLikes(like);
            return status;
        }


    }
}