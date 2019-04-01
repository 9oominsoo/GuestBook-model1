package com.josh.dto;

import com.josh.dao.GuestBookDao;

public class DaoTest {
	public static void main(String[] args) {
		GuestBookDao dao = new GuestBookDao();
		GuestBookDto dto = new GuestBookDto();
		dto.setName("구민수");
//		dto.setRegDate("2019-03-31 02:02:34");
		
	}
}
