package com.webtime.command;

import java.sql.Timestamp;


public class FaqChatVO {
	//user_id varchar2 (100) not null,
    //adviser_id varchar2 (100) not null,
    //recordFileLoca varchar2 (1000),
    //regdate date DEFAULT sysdate
	
	private String user_id;
	private String adviser_id;
	private String recordFileLoca;
	private Timestamp regdate;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getAdviser_id() {
		return adviser_id;
	}
	public void setAdviser_id(String adviser_id) {
		this.adviser_id = adviser_id;
	}
	public String getRecordFileLoca() {
		return recordFileLoca;
	}
	public void setRecordFileLoca(String recordFileLoca) {
		this.recordFileLoca = recordFileLoca;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public FaqChatVO(String user_id, String adviser_id, String recordFileLoca, Timestamp regdate) {
		super();
		this.user_id = user_id;
		this.adviser_id = adviser_id;
		this.recordFileLoca = recordFileLoca;
		this.regdate = regdate;
	}
	public FaqChatVO() {
		super();
	}
	
}
