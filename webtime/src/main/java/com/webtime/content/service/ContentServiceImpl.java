package com.webtime.content.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webtime.command.ContentVO;
import com.webtime.command.TicketVO;
import com.webtime.content.mapper.ContentMapper;

@Service("contentService")
public class ContentServiceImpl implements ContentService{

	@Autowired
	private ContentMapper contentmapper;
	
	
	@Override
	public int pay(ContentVO vo) {
		return contentmapper.pay(vo);
	}

	@Override
	public ArrayList<TicketVO> getList() {
		return contentmapper.getList();
	}

	@Override
	public int muTotal() {
		return contentmapper.muTotal();
	}
	@Override
	public int conTotal() {
		return contentmapper.conTotal();
	}

	@Override
	public void updateHit(int num) {
		contentmapper.updateHit(num);
	}
		
	@Override
	public TicketVO getInfo(int num) {
		return contentmapper.getInfo(num);
	}

	@Override
	public ArrayList<TicketVO> rankMusical() {
		return contentmapper.rankMusical();
	}

	@Override
	public ArrayList<TicketVO> rankConcert() {
		return contentmapper.rankConcert();
	}


}
