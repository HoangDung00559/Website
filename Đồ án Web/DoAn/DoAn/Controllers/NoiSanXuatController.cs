using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;

namespace DoAn.Controllers
{
    public class NoiSanXuatController : Controller
    {
        DoAnWebEntities db = new DoAnWebEntities();
        // GET: NoiSanXuat
        public ActionResult NoiSanXuatPartial()
        {
            return PartialView(db.XuatXus.Take(3).OrderBy(n=>n.TenNSX ).ToList());
        }


        public ViewResult SanPhamTheoNSX(int MaNSX=0)
        {

            XuatXu nsx = db.XuatXus.SingleOrDefault(n => n.MaNSX == MaNSX);
            if (nsx == null) 
            { 
                Response.StatusCode = 404;
                return null;
            }


            List<SanPham> ListSanPham = db.SanPhams.Where(n => n.MaNSX == MaNSX).OrderBy(n => n.GiaBan).ToList();

            if (ListSanPham.Count == 0)
            {
                ViewBag.SanPham = "KhÔng Có Sản Phẩm Nào Thuộc Chủ Đề Này ";
            }
            return View(ListSanPham);
        }
    }
}