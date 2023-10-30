package com.kh.whereding.admin;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.kh.whereding.admin.model.service.AdminService;
import com.kh.whereding.admin.model.vo.VisitCountVO;
/*
public class HttpSessionListener implements javax.servlet.http.HttpSessionListener {
	private static int todayVisitCount;

    public static int getTodayVisitCount() {
        return todayVisitCount;
    }

    public static void setTodayVisitCount(int count) {
        todayVisitCount = count;
    }
    
    
    
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(session.getServletContext());
        AdminService visitCountService = ctx.getBean("AdminService", AdminService.class);
        if(session.isNew()){
        	ArrayList<VisitCountVO> visitCountVO = AdminService.selectVisitCount();
            if(visitCountVO == null) {
            	AdminService.insertVisitCount();
                setTodayVisitCount(1);
            } else {
            	AdminService.updateVisitCount();
                setTodayVisitCount(visitCountVO.visitCount() + 1);
            }
        }

    }
	
    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
    }
}
*/

