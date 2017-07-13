package model.dao;

import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import misc.HibernateUtil;
import model.Interface.IDAO;
import model.NotesBean;
import model.UserBean;

public class NotesBeanHibernateDAO implements IDAO<NotesBean> {
	public static Session session;
	public static SessionFactory factory;
	public static Transaction trx;
	
	public static void main(String[] args) {
		test();
    }
	
	public static void test()
	{
		
		factory = HibernateUtil.getSessionFactory();
		session = factory.getCurrentSession();
		NotesBeanHibernateDAO dao = new NotesBeanHibernateDAO(factory);
		insert(dao);
		select(dao);
		//update(dao);
		//delete(dao);
		
	}

	private static void delete(NotesBeanHibernateDAO dao) {
		try {
			dao.getSession().close();
			trx = dao.getSession().beginTransaction();
			Boolean delete = dao.delete(1);
			System.out.println("delete" + delete);
			trx.commit();
			
			
		} catch (Exception e) {
			for (StackTraceElement s : e.getStackTrace())
				System.out.println(s.toString());
			System.out.println(e.getMessage());
		}
	}

	private static void update(NotesBeanHibernateDAO dao) {
		try {
			trx = dao.getSession().beginTransaction();
			NotesBean bean = new NotesBean();
			bean.setProcessId(1);
			bean.setRecordDate(new Date());
			bean.setSponsor("彥亨");
			bean.setSource("106年第3次工作會議 106/5/9(二)");
			bean.setGrade("A01");
			bean.setDiscussMatter("建請教育部協助協調縣市政府，將初階認證線上審查作業規劃，訂於6/1後進行，提請討論。");
			bean.setPresentation("一、 精緻網須於各縣市完成初階認證審查人員培訓前，完成初階認證審查功能介面。"); 
			bean.setReference("gg");
			bean.setUpload("00");
			NotesBean update = dao.update(bean);
			System.out.println("update" + bean);

			trx.commit();
		} catch (Exception e) {
			for (StackTraceElement s : e.getStackTrace())
				System.out.println(s.toString());
			System.out.println(e.getMessage());
		}
	}

	
	
	
	
	
	
	
	
	private static void select(NotesBeanHibernateDAO dao) {
		try {
			session = factory.getCurrentSession();
			trx = session.beginTransaction();
			List<NotesBean> select = dao.select();
			System.out.println(select);
			trx.commit();
		} catch (Exception e) {
			for (StackTraceElement s : e.getStackTrace())
				System.out.println(s.toString());
			System.out.println(e.getMessage());
		}
	}

	private static void insert(NotesBeanHibernateDAO dao) {
		// insert
		try {
			trx = dao.getSession().beginTransaction();
			NotesBean bean = new NotesBean();
			bean.setProcessId(0);
			bean.setRecordDate(new Date());
			bean.setSponsor("林彥亨");
			bean.setSource("106年第3次工作會議 106/5/9(二)");
			bean.setGrade("B01");
			bean.setDiscussMatter("建請教育部協助協調縣市政府，將初階認證線上審查作業規劃，訂於6/1後進行，提請討論。");
			bean.setPresentation("一、 精緻網須於各縣市完成初階認證審查人員培訓前，完成初階認證審查功能介面。"); 
			bean.setReference("xx");
			bean.setUpload("gg");
			NotesBean insert = dao.insert(bean);
			System.out.println("insert" + bean);

			trx.commit();
		} catch (Exception e) {
			for (StackTraceElement s : e.getStackTrace())
				System.out.println(s.toString());
			System.out.println(e.getMessage());
		}
	}
	
	
	public NotesBeanHibernateDAO(SessionFactory factory) {
		 this.factory = factory;
 	}
	
	
	@Override
	public NotesBean select(NotesBean bean) {
 		return select(bean.getProcessId());
	}

	@Override
	public NotesBean select(int id) {
 		return this.getSession().get(NotesBean.class,id);
	}

	@Override
	public List<NotesBean> select() {
 		return this.getSession().createQuery("from NotesBean", NotesBean.class).getResultList();
	}

	@Override
	public NotesBean insert(NotesBean bean) {
		NotesBean tmp = select(0);
		if( tmp ==null)
		{
		   this.getSession().save(bean);
		   System.out.println("Select " +tmp);
		}
		 return bean;
	}

	@Override
	public Boolean delete(NotesBean bean) {
		NotesBean tmp = select(bean);
		if(tmp !=null)
		{
			this.getSession().delete(tmp);
			return true;
		}else {
			return false;
		}
 		
	}

	@Override
	public Boolean delete(int id) {
		NotesBean tmp = select(id);
		if(tmp !=null)
		{
			this.getSession().delete(tmp);
			return true;
		}else {
			return false;
		}
			
	}

	@Override
	public NotesBean update(NotesBean bean) {
		NotesBean tmp = select(bean.getProcessId());
		if(tmp!=null)
		{
			tmp.setProcessId(bean.getProcessId());
			tmp.setRecordDate(bean.getRecordDate());
			tmp.setSponsor(bean.getSponsor());
			tmp.setSource(bean.getSource());
			tmp.setGrade(bean.getGrade());
			tmp.setDiscussMatter(bean.getDiscussMatter());
			tmp.setPresentation(bean.getPresentation());
			tmp.setReference(bean.getReference());
			tmp.setUpload(bean.getUpload());
		}	
		
		
 		return tmp;
	}

	@Override
	public Session getSession() {
 		return factory.getCurrentSession();
	}
	
	
	 
}
