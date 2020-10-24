using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApi.Models;

namespace WebApi.Controllers
{
    public class QuizController : ApiController
    {
        [HttpGet]
        [Route("api/Question")]
        public HttpResponseMessage GetQuestion()
        {
            using (QuizDBEntities db = new QuizDBEntities())
            {
                var Qns = db.Questions
                     .Select(x => new
                     {
                         QuestionID = x.QuestionID,
                         QuestionName = x.QuestionName,
                         Image = x.Image,
                         x.Option1,
                         x.Option2,
                         x.Option3,
                         x.Option4,
                     })
                     .OrderBy(y => Guid.NewGuid())
                     .Take(10)
                     .ToArray();

                var updated = Qns.AsEnumerable()
                    .Select(x => new
                    {
                        QuestionID = x.QuestionID,
                        QuestionName = x.QuestionName,
                        Image = x.Image,
                        Options = new string[] { x.Option1, x.Option2, x.Option3, x.Option4 }
                    }).ToList();
                return this.Request.CreateResponse(HttpStatusCode.OK, updated);
            }
        }

        [HttpPost]
        [Route("    ")]
        public HttpResponseMessage GetAnswers(int[] Qids)
        {
            using (QuizDBEntities db = new QuizDBEntities())
            {
                var result = db.Questions.AsEnumerable().Where(y => Qids.Contains(y.QuestionID))
                    .OrderBy(x => { return Array.IndexOf(Qids, x.QuestionID); })
                    .Select(z => z.Answer).ToArray();
                return this.Request.CreateResponse(HttpStatusCode.OK, result);
            }
        }

        //[HttpPost]
        //[Route("api/Answers")]
        //public HttpResponseMessage GetAnswers(int[] qIDs)
        //{
        //    using (QuizDBEntities db = new QuizDBEntities())
        //    {
        //        var result = db.Questions
        //            .AsEnumerable()
        //            .Where(e => qIDs
        //            .Contains(e.QuestionID))
        //            .OrderBy(x => { return Array.IndexOf(qIDs, x.QuestionID); }).Select(p => p.Answer).ToArray();
        //        return this.Request.CreateResponse(HttpStatusCode.OK, result);
        //    }
        //}
    }
}
