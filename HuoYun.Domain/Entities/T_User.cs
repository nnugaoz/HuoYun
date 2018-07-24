using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Entities
{
    public class T_User
    {
        public string ID { get; set; }

        public string CellPhone { get; set; }

        public string Password { get; set; }

        public int Type { get; set; }

        public bool Del { get; set; }

        public DateTime EditDate { get; set; }

        public string EditMan { get; set; }
    }
}
