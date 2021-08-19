using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
namespace DoAn.Controllers
{
    public class NongSanController : Controller
    {
        // GET: NongSan


        DoAnWebEntities db = new DoAnWebEntities();
        public PartialViewResult SanPhamMoi()
        {
            var listSanPhamMoi = db.SanPhams.Take(4).ToList();
            return PartialView(listSanPhamMoi);
        }
        public ViewResult XemChiTiet(int MaSP=0 )
        {
            SanPham Sp = db.SanPhams.SingleOrDefault(n=>n.MaSP==MaSP);
            if(Sp == null)
            {

                Response.StatusCode = 404;
                return null;
            }
            ViewBag.TenLoaiThucPham = db.LoaiSanPhams.Single(n=>n.MaLoaiSP== Sp.MaLoaiSP).TenLoaiThucPham;
            return View(Sp);

        }
    }
}