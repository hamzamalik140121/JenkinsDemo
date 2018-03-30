using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FYP.classes
{
    public interface IRater
    {
        double GetRating(List<string> actions);
    }

    public interface IComparer
    {
        double CompareVectors(double[] userFeaturesOne, double[] userFeaturesTwo);
    }

    public class UserBehaviorDatabase
    {
        public List<string> Tags { get; set; }

        public List<string> Articles { get; set; }

        public List<string> Users { get; set; }

        public List<string> UserActions { get; set; }
    }

    public interface IRecommender
    {

        void Train(UserBehaviorDatabase db);
//        List<Suggestion> GetSuggestions(int userId, int numSuggestions);
        double GetRating(int userId, int articleId);
        void Save(string file);
        void Load(string file);

    
    }
    public class hybird
    {
        void GetUserArticleRatingsTable(IRater rater)
        {
            string[,] table = new string[10, 10];
            //            table.UserIndexToID = db.Users.OrderBy(x => x.UserID)
            //               .Select(x => x.UserID).Distinct().ToList();
            //           table.ArticleIndexToID = db.Articles.OrderBy(x => x.ArticleID)
            //                .Select(x => x.ArticleID).Distinct().ToList();

            foreach (var userAction in table)
            {
//                table.Users[userIndex].ArticleRatings[articleIndex] = userAction.Rating;
            }

        }
    
    }
}