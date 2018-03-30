using FYP.classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using FYP.Controller;
using System.Web.Services;

namespace FYP
{
    public partial class index : System.Web.UI.Page
    {
        public FASAD f1 = FASAD.Instance(); 

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }


        login Login = new login();

        protected void Submit(object sender, EventArgs e)
        {
            string Username = username.Text;
            string password = pass.Text;
            Boolean status = f1.LoginCheck(Username, password);
            if (status == true){
                Session["sessionName"] = Username;
                
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }


        [WebMethod]
        public static Boolean signup(string fs, string ls, string us, string pas, string email, string agee, string gender)
        {
            FASAD f2 = new FASAD();
            Boolean status = f2.signup(fs,ls,us,pas,email,agee,gender);
            return status;
        }



    }
}