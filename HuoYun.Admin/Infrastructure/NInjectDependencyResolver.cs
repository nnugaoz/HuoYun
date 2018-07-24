using HuoYun.Domain.Abstract;
using HuoYun.Domain.Concrete;
using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HuoYun.Admin.Infrastructure
{
    public class NInjectDependencyResolver : IDependencyResolver
    {
        IKernel kernel;

        public NInjectDependencyResolver(IKernel kernel)
        {
            this.kernel = kernel;
            Bindings();
        }

        private void Bindings()
        {
            kernel.Bind<IUserRepository>().To<EFUserRepository>();
        }

        public object GetService(Type serviceType)
        {
            return kernel.TryGet(serviceType);
        }

        public IEnumerable<object> GetServices(Type serviceType)
        {
            return kernel.GetAll(serviceType);
        }
    }
}