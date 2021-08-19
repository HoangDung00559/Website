using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



namespace DoAn.Models
{
    public class GioHang
    {

        DoAnWebEntities db = new DoAnWebEntities();
        public int iMaSP { get; set; }
        public String sTenSp { get; set; }

        public String sHinhAnh { get; set; }
         
        public double dDonGia { get; set; }

        public int iSoLuong { get; set; }

        public double ThanhTien
        {
            get { return iSoLuong * dDonGia; }
        }


        // Hàm để tạo Giỏ Hàng
        public GioHang(int MaSP)
        {
            iMaSP = MaSP;
            SanPham sp = db.SanPhams.Single(n => n.MaSP == iMaSP);
            sTenSp = sp.TenSP;
            sHinhAnh = sp.AnhBia;
            dDonGia = double.Parse(sp.GiaBan.ToString());
            iSoLuong = 1;

        }

    }
}