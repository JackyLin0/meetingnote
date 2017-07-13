package misc;
import org.hibernate.*;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
public class HibernateUtil {
	private static SessionFactory factory = createSessionFactoty();

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	private static SessionFactory createSessionFactoty() {
 		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
 		factory =  new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		return factory;
	}
	
	public static SessionFactory getSessionFactory()
	{
		return factory;
	}

	public static void closeSessionFactory()
	{
		if(factory!=null){
			factory.close();}
	}
}
