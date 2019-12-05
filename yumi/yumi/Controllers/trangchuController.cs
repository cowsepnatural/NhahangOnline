using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using yumi.Models;

namespace yumi.Controllers
{
    public class trangchuController : Controller
    {
        NhahangOnlineEntities db = new NhahangOnlineEntities();
        // GET: trangchu
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult getDanhmuc()
        {
            var v = (from f in db.Danhmuc
                     where f.hide == true
                     orderby f.ID descending
                     select f).Take(3);
            return PartialView(v.ToList());
        }
        public ActionResult get_monan()
        {
            var v = (from f in db.Monan
                     orderby f.ID descending
                     select f).Take(4);
            return PartialView(v.ToList());
        }
        public ActionResult get_thucuong()
        {
            var v = (from f in db.Thucuong
                     orderby f.ID descending
                     select f).Take(4);
            return PartialView(v.ToList());
        }
    }
}