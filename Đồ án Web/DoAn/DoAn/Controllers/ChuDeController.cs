using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;

namespace DoAn.Controllers
{
    public class ChuDeController : Controller
    {
        // GET: ChuDe
        DoAnWebEntities db = new DoAnWebEntities();
        public ActionResult ChuDePartial()
        {
            return PartialView(db.LoaiSanPhams.ToList());
        }

        /*Sản Phẩm Theo chủ đề */

        public ViewResult SPTheoChuDe( int MaLoaiSP=0)
        {

            /*Kiểm tra Loại Sp*/

            LoaiSanPham cd = db.LoaiSanPhams.SingleOrDefault(n => n.MaLoaiSP == MaLoaiSP);
            if(cd==null)
            {
                Response.StatusCode = 404;
                return null;
            }


            List<SanPham> ListSanPham = db.SanPhams.Where(n => n.MaLoaiSP == MaLoaiSP).OrderBy(n=>n.GiaBan).ToList();
            
            if (ListSanPham.Count==0) 
            {
                ViewBag.SanPham = "KhÔng Có Sản Phẩm Nào Thuộc Chủ Đề Này ";
            }
            return View(ListSanPham);
         }
    




    }
}