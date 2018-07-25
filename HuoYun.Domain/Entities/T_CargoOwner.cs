using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Entities
{
    public class T_CargoOwner
    {
        public string ID { get; set; }

        public string UID { get; set; }

        public string Name { get; set; }

        public string Wx { get; set; }

        public string IDCardNo { get; set; }

        public byte[] HeadImg { get; set; }

        public byte[] IDCardImg { get; set; }

        public string ComName { get; set; }

        public string ComAreaID { get; set; }

        public string ComAddr { get; set; }

        public byte[] BLImg { get; set; }

        public int Authenticated { get; set; }

        public decimal Deposit { get; set; }

        public bool Del { get; set; }

        public DateTime EditDate { get; set; }

        public string EditMan { get; set; }
    }
}
