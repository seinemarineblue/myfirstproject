package com.webtime.user.service;

import java.util.ArrayList;

import com.webtime.command.CartVO;
import com.webtime.command.ContentVO;
import com.webtime.command.UserVO;

public interface UserService {

	public int idFind(UserVO vo); //아이디중복체크
	
	public int join(UserVO vo); //가입
	
	public UserVO login(UserVO vo);//로그인 
	
	public UserVO userInfo(String userId);//회원정보
	
	public int update(UserVO vo); //정보 수정
	
	public ArrayList<ContentVO> mybooking(String id);//예매내역
	
	public int addCart(CartVO vo); //장바구니 추가
	
	public ArrayList<CartVO> cartList(String user_id);//장바구니 목록
	
	public int deleteCart(CartVO vo);//장바구니 삭제
	
	public int cartCount(String user_id);//장바구니 목록 갯수
}
