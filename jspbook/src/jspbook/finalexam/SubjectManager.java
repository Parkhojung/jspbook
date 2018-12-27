package jspbook.finalexam;

import java.util.*;

public class SubjectManager {
	ArrayList<SubjectBean> list = new ArrayList<SubjectBean>();

	public ArrayList<SubjectBean> getList() {
		return list;
	}

	public void setList(ArrayList<SubjectBean> list) {
		this.list = list;
	}
	
	public SubjectBean find(String title) {
		for(SubjectBean SB: list) {
			if(SB.getTitle().equals(title)) {
				return SB;
			}
		}
		return null;
	}
}
