using System;
using System.Collections.Generic;
using System.Text;

namespace PlaceFinder.Services.Helpers
{
    public interface IServiceResolver
    {
        T Resolve<T>();
    }
}
