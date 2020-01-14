package com.webtime.faq.mapper;

import java.util.ArrayList;

import com.webtime.command.FaqChatVO;
import com.webtime.command.FaqVO;


public interface FaqMapper {
	public ArrayList<FaqVO> getList();
	public FaqVO getDetail(int fno);
	public FaqChatVO getChat(String userId);
}
