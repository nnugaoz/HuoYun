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
    
    public partial class T_User
    {
        public T_User()
        {
            this.T_Driver = new HashSet<T_Driver>();
        }
    
        public string ID { get; set; }
        public string CellPhone { get; set; }
        public string Password { get; set; }
        public int Type { get; set; }
        public bool Del { get; set; }
        public System.DateTime EditDate { get; set; }
        public string EditMan { get; set; }
    
        public virtual ICollection<T_Driver> T_Driver { get; set; }
    }
}