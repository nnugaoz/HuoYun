using HuoYun.Domain.Abstract;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
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
            try
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
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
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

        public void SaveDriver(T_User p_User)
        {
            foreach (var pDriver in p_User.T_Driver)
            {
                if (pDriver.ID == null)
                {
                    T_Driver lDriver = new T_Driver
                    {
                        ID = Guid.NewGuid().ToString()
                        ,
                        UID = p_User.ID
                        ,
                        Name = pDriver.Name
                        ,
                        Wx = pDriver.Wx
                        ,
                        IDCardNo = pDriver.IDCardNo
                        ,
                        CarBrandID = pDriver.CarBrandID
                        ,
                        CarTypeID = pDriver.CarTypeID
                        ,
                        MYear = pDriver.MYear
                        ,
                        CarNo = pDriver.CarNo
                        ,
                        CarLen = pDriver.CarLen
                        ,
                        CarLoad = pDriver.CarLoad
                        ,
                        Authenticated = pDriver.Authenticated
                        ,
                        Deposit = pDriver.Deposit
                        ,
                        IDCardImgPath = pDriver.IDCardImgPath
                        ,
                        HeadImgPath = pDriver.HeadImgPath
                        ,
                        CarImgPath = pDriver.CarImgPath
                        ,
                        DRImgPath = pDriver.DRImgPath
                        ,
                        DLImgPath = pDriver.DLImgPath
                    };
                    context.T_Driver.Add(lDriver);
                }
                else
                {
                    var lDriver = context.T_Driver.FirstOrDefault(e => e.ID == pDriver.ID);
                    if (lDriver != null)
                    {
                        lDriver.Name = pDriver.Name;
                        lDriver.Wx = pDriver.Wx;
                        lDriver.IDCardNo = pDriver.IDCardNo;
                        lDriver.CarBrandID = pDriver.CarBrandID;
                        lDriver.CarTypeID = pDriver.CarTypeID;
                        lDriver.MYear = pDriver.MYear;
                        lDriver.CarNo = pDriver.CarNo;
                        lDriver.CarLen = pDriver.CarLen;
                        lDriver.CarLoad = pDriver.CarLoad;
                        lDriver.Authenticated = pDriver.Authenticated;
                        lDriver.Deposit = pDriver.Deposit;
                        lDriver.IDCardImgPath = pDriver.IDCardImgPath;
                        lDriver.HeadImgPath = pDriver.HeadImgPath;
                        lDriver.CarImgPath = pDriver.CarImgPath;
                        lDriver.DRImgPath = pDriver.DRImgPath;
                        lDriver.DLImgPath = pDriver.DLImgPath;
                    }
                }
            }
            context.SaveChanges();
        }
    }
}
