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
    
    public partial class T_Driver
    {
        public string ID { get; set; }
        public string UID { get; set; }
        public string Name { get; set; }
        public string Wx { get; set; }
        public string IDCardNo { get; set; }
        public byte[] HeadImg { get; set; }
        public byte[] IDCardImg { get; set; }
        public byte[] DRImg { get; set; }
        public string CarBrandID { get; set; }
        public string CarTypeID { get; set; }
        public Nullable<System.DateTime> MYear { get; set; }
        public string CarNo { get; set; }
        public Nullable<decimal> CarLen { get; set; }
        public Nullable<decimal> CardLoad { get; set; }
        public byte[] CarImg { get; set; }
        public byte[] DLImg { get; set; }
        public Nullable<int> Authenticated { get; set; }
        public Nullable<decimal> Deposit { get; set; }
        public bool Del { get; set; }
        public Nullable<System.DateTime> EditDate { get; set; }
        public string EditMan { get; set; }
    
        public virtual T_User T_User { get; set; }
    }
}