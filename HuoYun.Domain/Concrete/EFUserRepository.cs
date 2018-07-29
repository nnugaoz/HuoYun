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
            foreach (var pDriver in p_User.T_DriverOwner)
            {
                if (pDriver.ID == null)
                {
                    T_DriverOwner lDriver = new T_DriverOwner
                    {
                        ID = Guid.NewGuid().ToString()
                        ,
                        UID = p_User.ID
                        ,
                        Name = pDriver.Name
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
                        Auth = pDriver.Auth
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
                    context.T_DriverOwner.Add(lDriver);
                }
                else
                {
                    var lDriver = context.T_DriverOwner.FirstOrDefault(e => e.ID == pDriver.ID);
                    if (lDriver != null)
                    {
                        lDriver.Name = pDriver.Name;
                        lDriver.IDCardNo = pDriver.IDCardNo;
                        lDriver.CarBrandID = pDriver.CarBrandID;
                        lDriver.CarTypeID = pDriver.CarTypeID;
                        lDriver.MYear = pDriver.MYear;
                        lDriver.CarNo = pDriver.CarNo;
                        lDriver.CarLen = pDriver.CarLen;
                        lDriver.CarLoad = pDriver.CarLoad;
                        lDriver.Auth = pDriver.Auth;
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


        public void SaveOwner(T_User p_User)
        {
            T_DriverOwner lOwner;
            T_User lUser = context.T_User.FirstOrDefault(e => e.ID == p_User.ID);

            foreach (var lDriverOwner in p_User.T_DriverOwner)
            {
                if (lDriverOwner.ID == "" || lDriverOwner.ID == null)
                {
                    //新增
                    lOwner = new T_DriverOwner();
                    lOwner.ID = Guid.NewGuid().ToString();
                    lOwner.Name = lDriverOwner.Name;
                    lOwner.IDCardNo = lDriverOwner.IDCardNo;
                    lOwner.IDCardImgPath = lDriverOwner.IDCardImgPath;
                    lOwner.HeadImgPath = lDriverOwner.HeadImgPath;
                    lOwner.ComName = lDriverOwner.ComName;
                    lOwner.ComAreaID = lDriverOwner.ComAreaID;
                    lOwner.ComAddr = lDriverOwner.ComAddr;
                    lOwner.BLImgPath = lDriverOwner.BLImgPath;
                    lOwner.Auth = lDriverOwner.Auth;
                    lOwner.EditDate = DateTime.Now;
                    lOwner.EditMan = "Admin";
                    lOwner.Del = false;
                    lUser.T_DriverOwner.Add(lOwner);
                }
                else
                {
                    //更新
                    lOwner = lUser.T_DriverOwner.FirstOrDefault(e => e.ID == lDriverOwner.ID);
                    lOwner.Name = lDriverOwner.Name;
                    lOwner.IDCardNo = lDriverOwner.IDCardNo;
                    lOwner.IDCardImgPath = lDriverOwner.IDCardImgPath;
                    lOwner.HeadImgPath = lDriverOwner.HeadImgPath;
                    lOwner.ComName = lDriverOwner.ComName;
                    lOwner.ComAreaID = lDriverOwner.ComAreaID;
                    lOwner.ComAddr = lDriverOwner.ComAddr;
                    lOwner.BLImgPath = lDriverOwner.BLImgPath;
                    lOwner.Auth = lDriverOwner.Auth;
                    lOwner.EditDate = DateTime.Now;
                    lOwner.EditMan = "Admin";
                    lOwner.Del = false;
                }
            }
            context.SaveChanges();
        }
    }
}
