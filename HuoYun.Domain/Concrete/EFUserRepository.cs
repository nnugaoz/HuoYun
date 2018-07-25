using HuoYun.Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HuoYun.Domain.Concrete
{
    public class EFUserRepository : IUserRepository
    {
        HuoYunEntities context = new HuoYunEntities();

        public IEnumerable<T_User> Users
        {
            get
            {
                return context.T_User;
            }
        }


        public void Save(T_User p_User)
        {
            T_User lUser = context.T_User.FirstOrDefault(e => e.ID == p_User.ID);

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
                context.T_User.Add(p_User);
            }
            context.SaveChanges();
        }


        public void Delete(string p_ID)
        {
            T_User lUser = context.T_User.FirstOrDefault(e => e.ID == p_ID);

            if (lUser != null)
            {
                context.T_User.Remove(lUser);
            }
            context.SaveChanges();
        }
    }
}
