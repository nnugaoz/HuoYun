using HuoYun.Domain.Abstract;
using HuoYun.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Concrete
{
    public class EFUserRepository : IUserRepository
    {
        EFDbContext context = new EFDbContext();

        public IEnumerable<T_User> Users
        {
            get
            {
                return context.Users;
            }
        }


        public void Save(T_User p_User)
        {
            T_User lUser = context.Users.FirstOrDefault(e => e.ID == p_User.ID);

            if (lUser != null)
            {
                lUser.CellPhone = p_User.CellPhone;
                lUser.Password = p_User.Password;
                lUser.Type = p_User.Type;
                lUser.EditDate = p_User.EditDate;
                lUser.EditMan = p_User.EditMan;
            }
            else
            {
                context.Users.Add(p_User);
            }
            context.SaveChanges();
        }


        public void Delete(string p_ID)
        {
            T_User lUser = context.Users.FirstOrDefault(e => e.ID == p_ID);

            if (lUser != null)
            {
                context.Users.Remove(lUser);
            }
            context.SaveChanges();
        }
    }
}
