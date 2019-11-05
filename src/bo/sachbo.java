package bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
	sachdao dao = new sachdao();
	ArrayList<sachbean> ds;
	public ArrayList<sachbean> getsach() throws Exception{
		ds = dao.getSach();
		return ds;
	}
}
