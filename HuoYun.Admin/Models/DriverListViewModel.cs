using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuoYun.Admin.Models
{
    public class DriverListViewModel
    {
        public string ID { get; set; }
        public string CellPhone { get; set; }
        public string Name { get; set; }
        public string Wx { get; set; }
        public string IDCardNo { get; set; }
        public string CarBrandID { get; set; }
        public string CarTypeID { get; set; }
        public Nullable<System.DateTime> MYear { get; set; }
        public string CarNo { get; set; }
        public Nullable<decimal> CarLen { get; set; }
        public Nullable<int> Authenticated { get; set; }
        public Nullable<decimal> Deposit { get; set; }
        public bool Del { get; set; }
        public Nullable<System.DateTime> EditDate { get; set; }
        public string EditMan { get; set; }
        public Nullable<decimal> CarLoad { get; set; }
    
    }
}