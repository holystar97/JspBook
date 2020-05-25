package jspbook.ch07.lab2;

import java.util.ArrayList;
import java.util.List;

public class PersonManager {

	
	List<PersonBean> personlist=new ArrayList<PersonBean>();
	
	public void add(PersonBean pb) {
		personlist.add(pb);
	}
	
	public List<PersonBean> getPersonList(){
		return personlist;	
	}
	
}
