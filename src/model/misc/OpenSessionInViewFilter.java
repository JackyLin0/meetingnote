package model.misc;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.HibernateException;

@WebFilter(
		urlPatterns={"/*"}
)
public class OpenSessionInViewFilter implements Filter {
	@Override
	public void destroy() {

	}
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		
		try {
			if (HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().isActive())
				HibernateUtil.getSessionFactory().getCurrentSession().close();
			else
			HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();
			chain.doFilter(request, response);
			HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().rollback();
			chain.doFilter(request, response);
		}
	}
	private FilterConfig filterConfig;
	@Override
	public void init(FilterConfig config) throws ServletException {
		this.filterConfig = config;
	}
}
