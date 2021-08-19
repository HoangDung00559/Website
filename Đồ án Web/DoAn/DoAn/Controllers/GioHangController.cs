using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;

namespace DoAn.Controllers
{
    public class GioHangController : Controller
    {
        // GET: GioHang
        #region
        DoAnWebEntities db = new DoAnWebEntities();
        public List<GioHang> LayGioHang()
        {
 
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if(lstGioHang==null)
            {
                //chưa tồn tại giỏ hàng sẽ tiến hành khỏi tạo session giỏ hàng
                lstGioHang = new List<GioHang>();
                Session["GioHang"] = lstGioHang;
                

            }

            return lstGioHang;
        }

        public ActionResult ThemGioHang(int iMaSP, string strURL)
        {
    
            SanPham sp = db.SanPhams.SingleOrDefault(n=>n.MaSP==iMaSP);
            if(sp==null)
            {
                Response.StatusCode = 404;
                return null;
            }    


            List<GioHang> lstGioHang = LayGioHang();
            GioHang sanpham = lstGioHang.Find(n => n.iMaSP == iMaSP);
            if (sanpham == null)
            {
                sanpham = new GioHang(iMaSP);
                lstGioHang.Add(sanpham);
                return Redirect(strURL);
            }
            else
            {
                sanpham.iSoLuong++ ;
                return Redirect(strURL);
            }
        }


        public ActionResult CapNhatGioHang(int iMaSP,FormCollection f)
        {
            //Khiểm Tra
            SanPham sp = db.SanPhams.SingleOrDefault(n => n.MaSP == iMaSP);
            // Kiểm Tra nếu get sai sẽ trả về trang 404;
            if ( sp == null)
            {
                Response.StatusCode = 404;
                return null;


            }

            // Lấy Giỏ hàng ra 
            List < GioHang >  lstGioHang = LayGioHang();

            // kiểm tra
            GioHang sanpham = lstGioHang.SingleOrDefault(n=>n.iMaSP==iMaSP);
            if (sanpham != null)
            {

                sanpham.iSoLuong = int.Parse(f["txtSoLuong"].ToString());

            }
            return RedirectToAction("GioHang");

        }


        public ActionResult XoaGioHang(int iMaSP)
        {
            SanPham sp = db.SanPhams.SingleOrDefault(n => n.MaSP == iMaSP);
            // Kiểm Tra nếu get sai sẽ trả về trang 404;
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;


            }
            // Lấy Giỏ hàng ra 
            List<GioHang> lstGioHang = LayGioHang();


            // kiểm tra
            GioHang sanpham = lstGioHang.SingleOrDefault(n => n.iMaSP == iMaSP);
            if (sanpham != null) 
            {
                lstGioHang.RemoveAll(n => n.iMaSP == iMaSP);
             
     

            }
            if (lstGioHang.Count == 0)
            {
                return RedirectToAction("Index","Home");
            }

            return RedirectToAction("GioHang");
        }






        // Xây Dựng Trang Giỏ Hàng
        public ActionResult GioHang()
        {
            if (Session ["GioHang"]== null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<GioHang> lstGioHang = LayGioHang();
            return View(lstGioHang);
        }

        // tính tổng tiền 
        private int TongSoLuong()
        {
            int iTongSoLuong = 0;
            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                iTongSoLuong = lstGioHang.Sum(n => n.iSoLuong);
            }
            
            return iTongSoLuong;
        }

        private double TongTien()
        {
            double dTongTien = 0;

            List<GioHang> lstGioHang = Session["GioHang"] as List<GioHang>;
            if (lstGioHang != null)
            {
                dTongTien = lstGioHang.Sum(n => n.ThanhTien); 
            }

            return dTongTien;
        }
        public ActionResult GioHangPartial()
        {
            if (TongSoLuong() == 0)
            {
                return PartialView();

            }
            ViewBag.TongSoLuong = TongSoLuong();
            ViewBag.TongTien = TongTien();
            return PartialView();
        }


        public ActionResult SuaGioHang()
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            List<GioHang> lstGioHang = LayGioHang();
            return View(lstGioHang);
        }

        #endregion


        // Đặt Hàng
        #region
        [HttpPost]
        public ActionResult DatHang()
        {

            if (Session["TaiKhoan"] == null || Session["TaiKhoan"].ToString()== "")
            {
                return RedirectToAction("DangNhap", "NguoiDung");
            }
            // kiểm Tra Đăng Nhập Thì mới đặt được hàng

            if (Session["GioHang"] == null)
            {
                RedirectToAction("Index", "Home");
            }
            HoaDon hd = new HoaDon();
            KhachHang kh = (KhachHang)Session["TaiKhoan"];
            List<GioHang> gh = LayGioHang();

            hd.MaKH = kh.MaKH;
            hd.NgayDat =DateTime.Now;
            db.HoaDons.Add(hd);
            db.SaveChanges();

            foreach(var item in gh)
            {
                ChiTietHoaDon cthd = new ChiTietHoaDon();
                cthd.MaHD = hd.MaDH;
                cthd.MaSP = item.iMaSP;
                cthd.SoLuong = item.iSoLuong;
                cthd.DonGia =(decimal)item.dDonGia;
                db.ChiTietHoaDons.Add(cthd);
            }
            db.SaveChanges();
            return RedirectToAction("Index","Home");
        }


        #endregion

        //Xác nhận đặt hàng
        public ActionResult XacNhanDonHang()
        {
            return View();
        }

    }
}