package mono.android.app;

public class ApplicationRegistration {

	public static void registerApplications ()
	{
				// Application and Instrumentation ACWs must be registered first.
		mono.android.Runtime.register ("PlaceFinder.Droid.MainApplication, PlaceFinder.Android, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", crc64ae63ad78276876c3.MainApplication.class, crc64ae63ad78276876c3.MainApplication.__md_methods);
		
	}
}
