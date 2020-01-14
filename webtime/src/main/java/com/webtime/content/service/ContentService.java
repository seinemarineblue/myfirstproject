package com.webtime.content.service;

import java.util.ArrayList;

import com.webtime.command.ContentVO;
import com.webtime.command.TicketVO;

public interface ContentService {

	public int pay(ContentVO vo);

	public ArrayList<TicketVO> getList();//공연 목록 
	
	public int muTotal();//뮤지컬 공연수 
	public int conTotal();//콘서트 공연수
	
	public void updateHit(int num); //조회수 증가
	
	public TicketVO getInfo(int num);//공연 상세 	

	public ArrayList<TicketVO> rankMusical();//뮤지컬 순위 
	public ArrayList<TicketVO> rankConcert();//콘서트 순위 
	
}