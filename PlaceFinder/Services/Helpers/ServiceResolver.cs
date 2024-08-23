using Unity;

namespace PlaceFinder.Services.Helpers
{
    public class ServiceResolver : IServiceResolver
    {
        private readonly IUnityContainer _container;

        public ServiceResolver(IUnityContainer container)
        {
            _container = container;
        }

        public T Resolve<T>()
        {
            return _container.Resolve<T>();
        }
    }

}
