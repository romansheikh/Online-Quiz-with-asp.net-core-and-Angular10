using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using WebApi.Models;

namespace WebApi.Controllers
{
    public class ParticipantController : ApiController
    {

        [EnableCors(origins: "http://localhost:4200", headers: "*", methods: "*")]
        [HttpPost]
        [Route("api/InsertParticipant")]
        public Participant Insert(Participant model)
        {
            using (QuizDBEntities db = new QuizDBEntities())
            {

                db.Participants.Add(model);
                db.SaveChanges();
                return model;
            }
        }

        //[Route("api/get")]
        //public IEnumerable<Participant> get()
        //{
        //    using (QuizDBEntities db = new QuizDBEntities())
        //    {

        //        return db.Participants.ToList();

        //    }
        //}



        [HttpPost]
        [Route("api/UpdateOutput")]
        public void UpdateOutput(Participant model)
        {
            using (QuizDBEntities db = new QuizDBEntities())
            {
                db.Entry(model).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();


            }
        }
    }
}
