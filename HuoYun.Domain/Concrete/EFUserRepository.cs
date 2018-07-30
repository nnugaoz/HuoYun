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

        public IEnumerable<User> Users
        {
            get
            {
                return context.Users;
            }
        }

        public void Save(User p_User)
        {
            try
            {
                User lUser = context.Users.FirstOrDefault(e => e.ID == p_User.ID);

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
            User lUser = context.Users.FirstOrDefault(e => e.ID == p_ID);

            if (lUser != null)
            {
                context.Users.Remove(lUser);
            }
            context.SaveChanges();
        }

        public void SaveDriver(User p_User)
        {
            foreach (var pDriver in p_User.DriverOwners)
            {
                if (pDriver.ID == null)
                {
                    DriverOwner lDriver = new DriverOwner
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
                    context.DriverOwners.Add(lDriver);
                }
                else
                {
                    var lDriver = context.DriverOwners.FirstOrDefault(e => e.ID == pDriver.ID);
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


        public void SaveOwner(User p_User)
        {
            DriverOwner lOwner;
            User lUser = context.Users.FirstOrDefault(e => e.ID == p_User.ID);

            foreach (var lDriverOwner in p_User.DriverOwners)
            {
                if (lDriverOwner.ID == "" || lDriverOwner.ID == null)
                {
                    //新增
                    lOwner = new DriverOwner();
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
                    lUser.DriverOwners.Add(lOwner);
                }
                else
                {
                    //更新
                    lOwner = lUser.DriverOwners.FirstOrDefault(e => e.ID == lDriverOwner.ID);
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
