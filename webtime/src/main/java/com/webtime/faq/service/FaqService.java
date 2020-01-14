package com.webtime.faq.service;

import java.util.ArrayList;

import com.webtime.command.FaqChatVO;
import com.webtime.command.FaqVO;



public interface FaqService {
	public ArrayList<FaqVO> getList();
	public FaqVO getDetail(int fno);
	public FaqChatVO getChat(String userId);
}
