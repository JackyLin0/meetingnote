package service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.misc.HibernateUtil;
import model.UserBean;
import model.Interface.IService;
import model.dao.UserBeanHibernateDAO;

public class UserBeanService implements IService<UserBean> {
	UserBeanHibernateDAO dao;

	// test
	public static void main(String[] args) {
		Transaction trx = null;

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		UserBeanHibernateDAO dao = new UserBeanHibernateDAO(HibernateUtil.getSessionFactory());
		UserBeanService service = new UserBeanService(dao);

		trx = dao.getSession().beginTransaction();
		try {
			// insert
			dao = new UserBeanHibernateDAO(HibernateUtil.getSessionFactory());
			trx = dao.getSession().getTransaction();
			UserBean bean = new UserBean();
			bean.setId(0);
			bean.setUser("Peter");
			bean.setPasswd("qwerty");
			bean.setEmail("Peter@gmail.com");
			bean.setChineseName("彼得");
 			UserBean insert = service.insert(bean);
			System.out.println("insert ==>" + insert);
			trx.commit();
			
			
			//select 
			dao = new UserBeanHibernateDAO(HibernateUtil.getSessionFactory());
 			trx = dao.getSession().getTransaction();
 			List<UserBean> select = service.select();
			System.out.println("select ==>" + select);
			trx.commit();

			
		} catch (Exception e) {
			System.out.println(e.toString());

			trx.rollback();
		}

	}

	public UserBeanService(UserBeanHibernateDAO dao) {
		this.dao = dao;
	}

	@Override
	public UserBean insert(UserBean bean) {
		return dao.insert(bean);
	}

	@Override
	public UserBean select(int id) {
		return dao.select(id);
	}

	@Override
	public List<UserBean> select() {
		return dao.select();
	}

	@Override
	public Boolean delete(int id) {
		return dao.delete(id);
	}

	@Override
	public UserBean update(UserBean bean) {
		return dao.update(bean);
	}

}
