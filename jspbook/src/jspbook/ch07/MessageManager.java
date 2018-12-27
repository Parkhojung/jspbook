package jspbook.ch07;

import java.util.ArrayList;

public class MessageManager {
	
	ArrayList<MessageBean> list = new ArrayList<MessageBean>();
	
	public void add(MessageBean mb) {
		list.add(mb);
	}
	
	public ArrayList<MessageBean> getList(){
		return list;
	}
}
