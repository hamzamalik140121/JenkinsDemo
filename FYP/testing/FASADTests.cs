using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;
using FYP.Controller;
using FYP.classes;

namespace FYP.testing
{
    [TestFixture]

    public class FASADTests
    {

       #region Setup and Tear down
        /// <summary>
        /// This runs only once at the beginning of all tests and is used for all tests in the
        /// class.
        /// </summary>
        [TestFixtureSetUp]
        public void InitialSetup()
        {
 
        }
 
        /// <summary>
        /// This runs only once at the end of all tests and is used for all tests in the class.
        /// </summary>
        [TestFixtureTearDown]
        public void FinalTearDown()
        {
 
        }
 
        /*[Test]
        public void SignupTest_True()
        {
            FASAD f = new FASAD();
            Boolean actual =  f.signup("malik", "umair", "umair123", "1234", "umair@gmail.com", "20", "male");
            Boolean expected = true;
            Assert.AreEqual(expected , actual);
        }*/


        [Test]
        public void SignupTest_False()
        {
            FASAD f = new FASAD();
            Boolean actual = f.signup("umer", "shehzad", "umer_123", "123", "umer@gmail.com", "22", "male");
            Boolean expected = true;
            Assert.AreEqual(expected, actual);
        }


        [Test]
        public void Login_true()
        {
            FASAD f = new FASAD();
            Boolean actual = f.LoginCheck("fastian", "1234");
            Boolean expected = true; 
            Assert.AreEqual(expected,actual);
        }

        [Test]
        public void LoginTest_false()
        {
            FASAD f = new FASAD();
            Boolean actual = f.LoginCheck("fastian1", "1234");
            Boolean expected = false;
            Assert.AreEqual(expected, actual);
        }


        [Test]
        public void SaveLikesTest_true()
        {
            FASAD f = new FASAD();
            Boolean actual = f.SaveLikes("hamzamalik", "fashion");
            Boolean expected = true;
            Assert.AreEqual(expected, actual);
        }

        [Test]
        public void storeEmotionTest()
        {
            FASAD f = FASAD.Instance();
            Boolean actual = f.storeEmotion("fastian", "neutral");
            Boolean expected = true;
            Assert.AreEqual(expected, actual);
        }

        [Test]
        public void storeRatingTest()
        {
            FASAD f = new FASAD();
            Boolean actual = f.storeRating("fastian", "6_tech_3" ,"neutral");
            Boolean expected = true;
            Assert.AreEqual(expected, actual);
        }



        [Test]
        public void Recommendation_true()
        {
            recommendation f = new recommendation();
            List<string> actual = f.recommendVideos("fastian");
            List<string> expected = new List<string>();
            expected.Add("https://www.youtube.com/embed/_eMAXOp2PvA");
            expected.Add("11");
            expected.Add("geography");
            expected.Add("https://www.youtube.com/embed/_eMAXOp2PvA");
            expected.Add("12");
            expected.Add("geography");
            expected.Add("https://www.youtube.com/embed/_eMAXOp2PvA");
            expected.Add("13");
            expected.Add("geography");


            Assert.AreEqual(expected, actual);
        }

               [Test]
        public void Blogs_true()
        {
            recommendation f = new recommendation();
            List<string> actual = f.Blogs("fastian");
            List<string> expected = new List<string>();
            expected.Add("Jarre joins fairytale celebration\n\nFrench musician Jean-Michel Jarre is to perform at a concert in Copenhagen to mark the bicentennial of the birth of writer Hans Christian Andersen.\n\nDenmark is holding a three-day celebration of the life of the fairy-tale author, with a concert at Parken stadium on 2 April. Other stars are expected to join the line-up in the coming months, and the Danish royal family will attend. Christian Andersen's fairy tales are timeless and universal, said Jarre. For all of us, at any age there is always - beyond the pure enjoyment of the tale - a message to learn. There are year-long celebrations planned across the world to celebrate Andersen and his work, which includes The Emperor's New Clothes and The Little Mermaid. Denmark's Crown Prince Frederik and Crown Princess Mary visited New York on Monday to help promote the festivities. The pair were at a Manhattan library to honour US literary critic Harold Bloom the international icon we thought we knew so well.\n\nBloom recognizes the darker aspects of Andersen's authorship, Prince Frederik said. Bloom is to be formally presented with the Hans Christian Andersen Award this spring in Anderson's hometown of Odense. The royal couple also visited the Hans Christian Anderson School complex, where Queen Mary read The Ugly Duckling to the young audience. Later at a gala dinner, Danish supermodel Helena Christensen was named a Hans Christian Andersen ambassador. Other ambassadors include actors Harvey Keitel and Sir Roger Moore, athlete Cathy Freeman and Brazilian soccer legend Pele.\n");
            expected.Add("geography");
        

            Assert.AreEqual(expected, actual);
        }


        [Test]
        public void recommendHappyVideos_true()
        {
       /*     recommendation f = new recommendation();
            List<string> actual = f.recommendHappyVideos("fastian");
            List<string> expected = new List<string>();
            expected.Add("https://www.youtube.com/embed/_eMAXOp2PvA");
            expected.Add("11");
            expected.Add("geography");
            expected.Add("https://www.youtube.com/embed/_eMAXOp2PvA");
            expected.Add("12");
            expected.Add("geography");
            expected.Add("https://www.youtube.com/embed/_eMAXOp2PvA");
            expected.Add("13");
            expected.Add("geography");


            Assert.AreEqual(expected, actual);
        */
        }

 
        /// <summary>
        /// This setup funcitons runs before each test method
        /// </summary>
        [SetUp]
        public void SetupForEachTest()
        {
        }
 
        /// <summary>
        /// This setup funcitons runs after each test method
        /// </summary>
        [TearDown]
        public void TearDownForEachTest()
        {
        }
        #endregion
 
    }

}