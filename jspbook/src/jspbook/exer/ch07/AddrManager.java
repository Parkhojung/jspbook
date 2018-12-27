package jspbook.exer.ch07;
import java.util.*;

public class AddrManager {
	List<AddrBean> AM = new ArrayList<AddrBean>();
	
	public boolean add(AddrBean AB) {
		AM.add(AB);
		return true;
	}

	public List<AddrBean> getAM() {
		return AM;
	}

	public void setAM(List<AddrBean> aM) {
		AM = aM;
	}
	
	public AddrBean find(String name) {
		for(AddrBean item: AM) {
			if(item.getName().equals(name)) {
				return item;
			}
		}
		return null;
	}
}
