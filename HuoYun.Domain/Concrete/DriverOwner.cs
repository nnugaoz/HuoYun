//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace HuoYun.Domain.Concrete
{
    using System;
    using System.Collections.Generic;
    
    public partial class DriverOwner
    {
        public string ID { get; set; }
        public string UID { get; set; }
        public string Name { get; set; }
        public string IDCardNo { get; set; }
        public string HeadImgPath { get; set; }
        public string IDCardImgPath { get; set; }
        public string DRImgPath { get; set; }
        public string CarBrandID { get; set; }
        public string CarTypeID { get; set; }
        public Nullable<System.DateTime> MYear { get; set; }
        public string CarNo { get; set; }
        public Nullable<decimal> CarLen { get; set; }
        public Nullable<decimal> CarLoad { get; set; }
        public string CarImgPath { get; set; }
        public string DLImgPath { get; set; }
        public string ComName { get; set; }
        public string ComAreaID { get; set; }
        public string ComAddr { get; set; }
        public string BLImgPath { get; set; }
        public Nullable<int> Auth { get; set; }
        public bool Del { get; set; }
        public Nullable<System.DateTime> EditDate { get; set; }
        public string EditMan { get; set; }
    
        public virtual User User { get; set; }
    }
}
