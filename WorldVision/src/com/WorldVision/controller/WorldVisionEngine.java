package com.WorldVision.controller;

import com.WorldVision.action.Action;
import com.WorldVision.action.Agree;
import com.WorldVision.action.EmailCheckAction;
import com.WorldVision.action.Find_id;
import com.WorldVision.action.Find_pwd;
import com.WorldVision.action.Index;
import com.WorldVision.action.LeaveSite;
import com.WorldVision.action.Register;
import com.WorldVision.action.RegisterForm;
import com.WorldVision.action.SupportCom;
import com.WorldVision.action.MyInfo;
import com.WorldVision.action.myPwd;
import com.WorldVision.action.SupportInfo;
import com.WorldVision.action.SupportPart;
import com.WorldVision.action.SuupportWay;
import com.WorldVision.action.Login;
import com.WorldVision.action.LoginForm;
import com.WorldVision.action.Logout;
import com.WorldVision.action.IdCheckAction;
import com.WorldVision.action.MyPage;
import com.WorldVision.action.MyPageForm;
import com.WorldVision.action.NoticeDelete;
import com.WorldVision.action.NoticeList;
import com.WorldVision.action.NoticeUpdate;
import com.WorldVision.action.NoticeUpdateForm;
import com.WorldVision.action.NoticeViewForm;
import com.WorldVision.action.NoticeWrite;
import com.WorldVision.action.NoticeWriteForm;
public class WorldVisionEngine {

	public WorldVisionEngine() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	private static WorldVisionEngine instance = new WorldVisionEngine();

	public static WorldVisionEngine getInstance() {
		return instance;
	}
	
	//타입에 따른 객체 생성
	public Action getType(String type) {
		Action act = null;
		System.out.println("엔진");
		System.out.println(type);		
		if(type.equals("index")) {
			act = new Index();
		}else if(type.equals("agree")) {
			act = new Agree();
		}else if(type.equals("registerForm")) {
			act = new RegisterForm();
		}else if(type.equals("register")) {
			act = new Register();
		}else if(type.equals("loginForm")) {
			act = new LoginForm();
		}else if(type.equals("login")) {
			act = new Login();
		}else if(type.equals("logout")) {
			act = new Logout();
		}else if(type.equals("myPwd")) {
			act = new myPwd();
		}else if(type.equals("myInfo")) {
			act= new MyInfo();
		}else if(type.equals("myPageForm")){
			act = new MyPageForm();
		}else if(type.equals("myPage")) {
			act = new MyPage();
		}else if(type.equals("find_id")) {
			act = new Find_id();
		}else if(type.equals("find_pwd")) {
			act = new Find_pwd();
		}else if(type.equals("idCheckAction")) {
			act = new IdCheckAction();
		}else if(type.equals("emailCheckAction")) {
			act = new EmailCheckAction();
		}else if(type.equals("leaveSite")) {
			act = new LeaveSite();
		}else if(type.contentEquals("supportPart")) {
			act = new SupportPart();
		}else if(type.equals("supportInfo")) {
			act = new SupportInfo();
		}else if(type.equals("supportWay")) {
			act = new SuupportWay();
		}else if(type.equals("supportCom")) {
			act = new SupportCom();
		}else if(type.equals("noticeList")) {
			act = new NoticeList();
		}else if(type.equals("noticeViewForm")) {
			act = new NoticeViewForm();
		}else if(type.equals("noticeWriteForm")) {
			act = new NoticeWriteForm();
		}else if(type.equals("noticeWrite")) {
			act = new NoticeWrite();
		}else if(type.equals("noticeDelete")) {
			act = new NoticeDelete();
		}else if(type.equals("noticeUpdateForm")) {
			act = new NoticeUpdateForm();
		}else if(type.equals("noticeUpdate")) {
			act = new NoticeUpdate();
		}
		return act;	
	}
		
}
