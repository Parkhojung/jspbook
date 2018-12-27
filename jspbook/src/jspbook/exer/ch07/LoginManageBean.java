package jspbook.exer.ch07;

import java.util.ArrayList;
import java.util.List;

public class LoginManageBean {
	List<LoginBean> list = new ArrayList<LoginBean>() ;
	
	public LoginManageBean(){
	}
	public void addLoginBean(LoginBean b) {
		list.add(b);
	}
	
	public List<LoginBean> getList(){
		return list;
	}
}
