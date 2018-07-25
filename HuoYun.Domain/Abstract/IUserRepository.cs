using HuoYun.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Abstract
{
    public interface IUserRepository
    {
        IEnumerable<T_User> Users { get; }

        void Save(T_User p_User);

        void Delete(string p_ID);
    }
}
