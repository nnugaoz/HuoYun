using HuoYun.Domain.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Abstract
{
    public interface IUserRepository
    {
        IEnumerable<User> Users { get; }

        void Save(User p_User);

        void SaveDriver(User p_User);

        void Delete(string p_ID);

        void SaveOwner(User p_User);
    }
}
