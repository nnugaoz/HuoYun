using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Entities
{
    public class T_Driver
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

        public DateTime MYear { get; set; }

        public string CarNo { get; set; }

        public decimal CarLen { get; set; }

        public decimal CardLoad { get; set; }

        public byte[] CarImg { get; set; }

        public byte[] DLImg { get; set; }

        public int Authenticated { get; set; }

        public decimal Deposit { get; set; }

        public bool Del { get; set; }

        public DateTime EditDate { get; set; }

        public string EditMan { get; set; }

    }
}
