using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
using PagedList;
using PagedList.Mvc;
using System.IO;


namespace DoAn.Controllers
{
    public class QuanLySanPhamController : Controller
    {

        DoAnWebEntities db = new DoAnWebEntities();
        // GET: QuanLySanPham
        public ActionResult IndexAdmin(int? page)
        {

            int pageNumber = (page ?? 1);
            int pageSize = 10;
            return View(db.SanPhams.ToList().OrderBy(n => n.MaSP).ToPagedList(pageNumber, pageSize));

        }

        //Thêm mới
        [HttpGet]
        public ActionResult Create()
        {
            ViewBag.MaNSX = new SelectList(db.XuatXus.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams.ToList().OrderBy(n => n.MaLoaiSP), "MaLoaiSP", "TenLoaiThucPham");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(SanPham sp, FormCollection f, HttpPostedFileBase fFileUpload)
        {
            //Đưa  dữ  liệu  vào  DropDown
            ViewBag.MaNSX = new SelectList(db.XuatXus.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams.ToList().OrderBy(n => n.MaLoaiSP), "MaLoaiSP", "TenLoaiThucPham");


            if (fFileUpload == null)
            {
                //Nội  dung  thông  báo  yêu  cầu  chọn  ảnh  bìa
                ViewBag.ThongBao = "Hãy  chọn  ảnh  bìa.";
                //Lưu  thông  tin  để  khi  load  lại  trang  do  yêu  cầu  chọn  ảnh  bìa  sẽ  hiển  thị các  thông  tin  này  lên  trang
                ViewBag.TenSanPham = f["sTenSanPham"];
                ViewBag.MoTa = f["sMoTa"];
                ViewBag.SoLuongTon = int.Parse(f["iSoLuongTon"]);
                ViewBag.GiaBan = decimal.Parse(f["mGiaBan"]);
                ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams.ToList().OrderBy(n => n.TenLoaiThucPham), "MaLoaiSP", "TenLoaiThucPham", int.Parse(f["MaLoaiSP"]));
                ViewBag.MaNSX = new SelectList(db.XuatXus.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX", int.Parse(f["MaNSX"]));
                return View();

            }
            else
            {
                if (ModelState.IsValid)
                {
                    //Lấy  tên  file  (Khai  báo  thư  viện:  System.IO)
                    var sFileName = Path.GetFileName(fFileUpload.FileName);
                    //Lấy  đường  dẫn  lưu  file
                    var path = Path.Combine(Server.MapPath("~/HinhAnh"), sFileName);
                    //Kiểm  tra  ảnh  bìa  đã  tồn  tại  chưa  để  lưu  lên  thư  mục if  (!System.IO.File.Exists(path))
                    {
                        fFileUpload.SaveAs(path);
                    }
                    //Lưu  Sach  vào  CSDL sach.TenSach  =  f["sTenSach"];
                    sp.MoTa = f["sMoTa"].Replace("<p>", "").Replace("</p>", "\n");
                    sp.AnhBia = sFileName;
                    sp.NgayCapNhat = Convert.ToDateTime(f["dNgayCapNhat"]);
                    sp.SoLuongTon = int.Parse(f["iSoLuongTon"]);
                    sp.GiaBan = decimal.Parse(f["mGiaBan"]);
                    sp.MaLoaiSP = int.Parse(f["MaLoaiSP"]);
                    sp.MaNSX = int.Parse(f["MaNSX"]);
                    db.SanPhams.Add(sp);
                    db.SaveChanges();
                    return RedirectToAction("IndexAdmin");

                }

                return View();
            }
        }
        [HttpGet]
        public ActionResult Edit(int MaSP)
        {
            //Lấy sách theo mã
            SanPham sp = db.SanPhams.SingleOrDefault(n => n.MaSP == MaSP);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            ViewBag.MaNSX = new SelectList(db.XuatXus.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX", sp.MaNSX);
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams.ToList().OrderBy(n => n.MaLoaiSP), "MaLoaiSP", "TenLoaiThucPham", sp.MaLoaiSP);
            return View(sp);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(SanPham sp)
        {
            if (ModelState.IsValid)
            {
                //Cập nhật trong model
                db.Entry(sp).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();


            }
            //Đưa  dữ  liệu  vào  DropDown
            ViewBag.MaNSX = new SelectList(db.XuatXus.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX", sp.MaNSX);
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams.ToList().OrderBy(n => n.MaLoaiSP), "MaLoaiSP", "TenLoaiThucPham", sp.MaLoaiSP);

            return RedirectToAction("IndexAdmin");

        }
        public ActionResult Details(int MaSP)
        {
            //Lấy sách theo mã
            SanPham sp = db.SanPhams.SingleOrDefault(n => n.MaSP == MaSP);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            return View(sp);
        }
        [HttpGet]
        public ActionResult Delete(int MaSP)
        {
            //Lấy sách theo mã
            SanPham sp = db.SanPhams.SingleOrDefault(n => n.MaSP == MaSP);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            return View(sp);
        }
        [HttpPost, ActionName("Xoa")]
        public ActionResult XacNhanXoa (int MaSP)
        {
            SanPham sp = db.SanPhams.SingleOrDefault(n => n.MaSP == MaSP);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            db.SanPhams.Remove(sp);
            db.SaveChanges();
            return RedirectToAction("IndexAdmin");
        }
    }
}

