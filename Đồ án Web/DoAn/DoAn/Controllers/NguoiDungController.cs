using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;

namespace DoAn.Controllers
{
        
    public class NguoiDungController : Controller
    {
        // GET: NguoiDung
        DoAnWebEntities db = new DoAnWebEntities();
        public ActionResult Index()
        {
            return View();
        }


        [HttpGet]

        public ActionResult DangKy()
        {
            return View();
        }

        [HttpPost]
       // [ValidateAntiForgeryToken]
        public ActionResult DangKy(KhachHang kh)
        {
            if (ModelState.IsValid)
            {
                db.KhachHangs.Add(kh);
                db.SaveChanges();
            }
            /* Chèn dữ liệu vào data*/
            
            return View();
        }

        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();

        }
        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {

            string tk = f["txtTaiKhoan"].ToString();
            string mk = f.Get("txtMatKhau").ToString();
            KhachHang kh = db.KhachHangs.SingleOrDefault   (n => n.TaiKhoan == tk && n.MatKhau == mk);
            if(kh != null)
            {
                ViewBag.ThongBao = "Chúc Mừng Bạn Đã Đăng Nhập Thành Công !";
                Session["TaiKhoan"] = kh ;
                return View();
            }
            ViewBag.ThongBao = "Tên tài Khoản hoặc mật Khẩu Bạn Nhập Không Đúng";
            return View();
        }

    }
}