using FYP.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FYP.classes
{
    public class recommendation
    {

        public string VideoCat { get; set; }
        public double PearsonScore { get; set; }

        public database db = database.Instance();
        public static Dictionary<string, List<UserLog>> recommendations = new Dictionary<string, List<UserLog>>();

        public List<string> recommendVideos()
        {
            List<string> data = new List<string>();
             recommendations = db.recommendVideos();

            var sortedList = recommendations.Where(x => x.Key != "fashion");

            sortedList.OrderByDescending(x => x.Key);

            List<UserLog> recommen = new List<UserLog>();
            List<string> Videos = new List<string>();
            // go through the list and calculate the Pearson score for each product
            foreach (var entry in sortedList)
            {
                double Rating1 = Convert.ToInt32(PearsonCal("fashion", entry.Key));
                if(Rating1 >= 0)
                {
                    Videos.Add(entry.Key);
                }
                /*recommen.Add(new UserLog()
                {
                     VideoCat = entry.Key,
                    Rating = Convert.ToInt32(PearsonCal("fashion", entry.Key))
                });*/
            }
            //List<UserLog> recommen1 = new List<UserLog>();
            //recommen1 = recommen;
            int abc = 0;
            List<string> VV = Videos;
            Videos = db.GetVideos(VV);
            List<string> cc = new List<string>();
            cc.Add("fashion");
            cc.Add("sport");

            List<string> V2 = db.GetVideos(cc);
            Videos.AddRange(V2);
            int abc1 = 0;
            return Videos;

        }



        public List<string> recommendHappyVideos()
        {
            List<string> data = db.recommendHappyVideos();
            return data;

        }


        public double PearsonCal(string prod1, string prod2)
        {
            List<UserLog> shared_items = new List<UserLog>();
            foreach (var item in recommendations[prod1])
            {
                if (recommendations[prod2].Where(x => x.Username == item.Username).Count() != 0)
                {
                    shared_items.Add(item);
                }
            }

            if (shared_items.Count == 0)
            {
                return 0;
            }

            // sum up all the preferences
            double product1_review_sum = 0.00f;
            foreach (UserLog item in shared_items)
            {
                product1_review_sum += recommendations[prod1].Where(x => x.Username == item.Username).FirstOrDefault().Rating;
            }

            double product2_review_sum = 0.00f;
            foreach (UserLog item in shared_items)
            {
                product2_review_sum += recommendations[prod2].Where(x => x.Username == item.Username).FirstOrDefault().Rating;
            }

            // sum up the squares
            double product1_rating = 0f;
            double product2_rating = 0f;
            foreach (UserLog item in shared_items)
            {
                product1_rating += Math.Pow(recommendations[prod1].Where(x => x.Username == item.Username).FirstOrDefault().Rating, 2);
                product2_rating += Math.Pow(recommendations[prod2].Where(x => x.Username == item.Username).FirstOrDefault().Rating, 2);
            }

            //sum up the products
            double critics_sum = 0f;
            foreach (UserLog item in shared_items)
            {
                critics_sum += recommendations[prod1].Where(x => x.Username == item.Username).FirstOrDefault().Rating *
                                recommendations[prod2].Where(x => x.Username == item.Username).FirstOrDefault().Rating;

            }

            //calculate pearson score
            double num = critics_sum - (product1_review_sum * product2_review_sum / shared_items.Count);

            double density = (double)Math.Sqrt((product1_rating - Math.Pow(product1_review_sum, 2) / shared_items.Count) * ((product2_rating - Math.Pow(product2_review_sum, 2) / shared_items.Count)));
            if (density == 0)
                return 0;
            
            
            double Pearson = num / density;
            return Pearson;
        
        
        }






    }
}