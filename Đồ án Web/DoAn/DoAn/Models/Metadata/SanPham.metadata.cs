using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace DoAn.Models
{
    [MetadataTypeAttribute(typeof(SanPhamMetadata))]
    public partial class SanPham
    {
        internal sealed class SanPhamMetadata
        {
            
            [Required(ErrorMessage ="Vui lòng nhập dữ liệu.")]
            [Display(Name = "Mã sản phẩm")]
            public int MaSP { get; set; }

            
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu.")]
            [Display(Name = "Tên sản phẩm")]
            public string TenSP { get; set; }

            
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu.")]
            [Display(Name = "Giá bán")]
            public Nullable<decimal> GiaBan { get; set; }
            
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu.")]
            [Display(Name = "Mô tả")]
            public string MoTa { get; set; }

            
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu.")]
            [Display(Name = "Ảnh")]
            public string AnhBia { get; set; }

            
            [DataType(DataType.Date)]
            [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu.")]
            [Display(Name = "Ngày cập nhật")]
            public Nullable<System.DateTime> NgayCapNhat { get; set; }

            
            [Required(ErrorMessage = "Vui lòng nhập dữ liệu.")]
            [Display(Name = "Số lượng tồn")]
            public Nullable<int> SoLuongTon { get; set; }

           
            
            [Display(Name = "Mã nhà sản xuất")]
            public Nullable<int> MaNSX { get; set; }

            
            
            [Display(Name = "Mã loại sản phẩm")]
            public Nullable<int> MaLoaiSP { get; set; }

            [Required(ErrorMessage = "Vui lòng nhập dữ liệu.")]
            [Display(Name = "Mới")]
            public Nullable<int> Moi { get; set; }
        }
    }
}