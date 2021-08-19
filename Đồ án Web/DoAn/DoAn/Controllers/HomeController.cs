using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList.Mvc;
using PagedList;
using DoAn.Models;

namespace DoAn.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home

        DoAnWebEntities db = new DoAnWebEntities();

        public ActionResult Index(int? page)
        {

            int pageSize = 7;
            int pageNumber = (page ?? 1);
            return View(db.SanPhams.Where(n=>n.Moi==1).OrderBy(n=>n.GiaBan).ToPagedList(pageNumber,pageSize));
        }
        
    }
}