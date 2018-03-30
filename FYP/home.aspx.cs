using System.Net.Http;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.IO;
using System.Text;
using System.Web.Services;
using FYP.Controller;

namespace FYP
{
    public partial class home : System.Web.UI.Page
    {

        public static string[] emotion;
        public static string[] words;
        protected void Page_Load(object sender, EventArgs e)
        {
            int counter = 0;
            string line;
            List<string> Words = new List<string>();
            // Read the file and display it line by line.  
            System.IO.StreamReader file =
                new System.IO.StreamReader(@"C:\Users\Hamza_Malik\Desktop\FYP\FYP\words.txt");
            while ((line = file.ReadLine()) != null)
            {
                Words.Add(line);
                counter++;
            }
            words = Words.ToArray();
            file.Close();

            int counter1 = 0;
            string line1;
           List<string> Emotion = new List<string>();
            // Read the file and display it line by line.  
            System.IO.StreamReader file1 =
                new System.IO.StreamReader(@"C:\Users\Hamza_Malik\Desktop\FYP\FYP\emotion.txt");
            while ((line1 = file1.ReadLine()) != null)
            {
                Emotion.Add(line1);
                counter1++;
            }
            emotion = Emotion.ToArray();
            file.Close();  
        }



        [WebMethod]
        public static void abc(string emo)
        {
            //Response.Redirect("home.aspx");

//            FASAD f = FASAD.Instance();
//            Boolean status = f.storeEmotion(emo);
//            return status;
        }




        [WebMethod]
        public static string Emotions(string emo,string emo1)
        {
            int counter = 0;
            string line;
            List<string> Words = new List<string>();
            // Read the file and display it line by line.  
            System.IO.StreamReader file =
                new System.IO.StreamReader(@"C:\Users\Hamza_Malik\Desktop\FYP\FYP\words.txt");
            while ((line = file.ReadLine()) != null)
            {
                Words.Add(line);
                counter++;
            }
            words = Words.ToArray();
            file.Close();

            int counter1 = 0;
            string line1;
            List<string> Emotion = new List<string>();
            // Read the file and display it line by line.  
            System.IO.StreamReader file1 =
                new System.IO.StreamReader(@"C:\Users\Hamza_Malik\Desktop\FYP\FYP\emotion.txt");
            while ((line1 = file1.ReadLine()) != null)
            {
                Emotion.Add(line1);
                counter1++;
            }
            emotion = Emotion.ToArray();
            file.Close();  
        
            string[] rate = emo1.Split(' ').ToArray<string>();
            List<string> rateEmotions= new List<string>();
            for (int i =0;i<rate.Length;i++)
            {
                for (int j=0; j < Words.Count;j++)
                {
                    if (rate[i].Equals(words[j]))
                    {
                        rateEmotions.Add(emotion[j]);
                    }
                   
                }
                 

            }

            int happy =0;
            int sad =0;
            int angry =0;
            int fear =0;
            int disgust =0;
            int neutral =0;

            for(int k =0;k<rateEmotions.Count;k++)
            {
                if (rateEmotions[k].Equals("happy"))
                {
                    happy = happy + 1;
                }
                else if (rateEmotions[k].Equals("disgust"))
                {
                    disgust = disgust + 1;
                }
                if (rateEmotions[k].Equals("fear"))
                {
                    fear = fear + 1;
                }
                if (rateEmotions[k].Equals("sadness"))
                {
                    sad = sad + 1;
                }
                if (rateEmotions[k].Equals("angry"))
                {
                    angry = angry + 1;
                }
                else
                {
                    neutral = neutral + 1;
                }

            }


            string mood = "";
            if(happy > angry && happy > sad && happy >disgust && happy > fear && happy > neutral){
                mood = "happy";
            }
            else if (angry > happy && angry > sad && angry > disgust && angry > fear && angry > neutral){
                mood = "angry";
            }
            if (sad > angry && sad > happy && sad > disgust && sad > fear && sad > neutral){
                mood = "sad";
            }
            if (fear > angry && fear > sad && fear > disgust && fear > happy && fear > neutral){
                mood = "fear";
            }
            if (neutral > angry && neutral > sad && neutral > disgust && neutral > fear && neutral > happy){
                mood = "neutral";
            }
            if (disgust > angry && disgust > sad && disgust > happy && disgust > fear && disgust > happy){
                mood = "disgust";
            }


            if ((emo.Equals("happy") && mood.Equals("happy")) || (emo.Equals("happy") && mood.Equals("neutral")) || (emo.Equals("happy") && mood.Equals("disgust")))
            {
                mood = "happy";
            }
            else if ((emo.Equals("sad") && mood.Equals("sad")) || (emo.Equals("sad") && mood.Equals("neutral")) || (emo.Equals("sad") && mood.Equals("disgust")))
            {
                mood = "sad";
            }
            else if ((emo.Equals("angry") && mood.Equals("angry")) || (emo.Equals("angry") && mood.Equals("neutral")) || (emo.Equals("angry") && mood.Equals("disgust")))
            {
                mood = "angry";
            }
            else
            {
                mood = "neutral";
            }

            Boolean status = false;
            HttpContext.Current.Session["Emotion"] = mood;
            FASAD f = FASAD.Instance();
            f.storeEmotion(emo);
            return mood;
        }

        public void getRecommendations(object sender, EventArgs e)
        {

        }

    }
}