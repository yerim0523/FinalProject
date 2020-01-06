package com.toleisure.mybatis.dao;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.toleisure.mybatis.dto.FeedBackDTO;
import com.toleisure.mybatis.dto.FileDTO;
import com.toleisure.mybatis.dto.GroupDTO;
import com.toleisure.mybatis.dto.MemberDTO;

@Controller
public class GroupController
{
	@Autowired
	private SqlSession sqlsession;
	
	
	@RequestMapping(value = "/newinsertform.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String newInsertForm(GroupDTO dto, Model model, HttpSession session)
	{
		String view = "WEB-INF/views/OpenForm.jsp";
		session.getAttribute("member");
		
		return view;
	}
	
	@RequestMapping(value = "/groupinsertform.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String insertForm(GroupDTO dto, Model model, HttpSession session)
	{
		String view = "WEB-INF/views/OpenForm.jsp";
		session.getAttribute("member");
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.groupFormInfo(dto.getGrCode());
		
		System.out.println("==================");
		System.out.println("==== dto.getGrCode = " + dto.getGrCode());
		System.out.println("==================");
		
		GroupDTO dto2 = dao.groupFormInfo(dto.getGrCode()); 
		
		model.addAttribute("groupinfo", dto2);
		
		return view;
	}
	
	@RequestMapping(value = "/groupinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String groupInsertForm(GroupDTO dto, Model model, HttpSession session,MultipartHttpServletRequest request) throws ServletException,IllegalStateException, IOException
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		System.out.println("==================");
		System.out.println("==== dto.getGrCode = " + dto.getGrCode());
		System.out.println("==================");
		if(dto.getGrCode()!=0)
		{
			System.out.println("기존모임생성");
			dao.addGroup(dto);
			System.out.println("==================");
			System.out.println("==== 현재 들어간 모임코드 = " + dto.getGrCode());
			System.out.println("==================");
		}
		else if(dto.getGrCode()==0)
		{
			System.out.println("신규모임생성");
			dao.newGroup(dto);
			System.out.println("==================");
			System.out.println("==== 현재 들어간 모임코드 =  " + dto.getGrCode());
			System.out.println("==================");
		}

	      IMemberDAO dao2 = sqlsession.getMapper(IMemberDAO.class);
		   
		   String rootUploadDir = "C:\\Final\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Fproject\\uploads";
		   
	       File dir = new File(rootUploadDir); 
	       
	       if(!dir.exists()) { //업로드 디렉토리가 존재하지 않으면 생성
	           dir.mkdirs();
	       }
	       
	       Iterator<String> iterator = request.getFileNames(); //업로드된 파일정보 수집(2개 - file1,file2)
	       
	       int fileLoop = 0;
	       String uploadFileName; 
	       MultipartFile mFile = null;
	       String orgFileName = ""; //진짜 파일명
	       String sysFileName = ""; //변환된 파일명
	       ArrayList<String> list = new ArrayList<String>();
	       
	       while(iterator.hasNext()) {
	           fileLoop++;
	           
	           uploadFileName = iterator.next();
	           mFile = request.getFile(uploadFileName);
	           
	           orgFileName = mFile.getOriginalFilename();    
	           System.out.println(orgFileName);
	           
	           if(orgFileName != null && orgFileName.length() != 0) { //sysFileName 생성
	               System.out.println("if문 진입");
	               
	               try {
	                   System.out.println("try 진입");
	                   
	                   SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMDDHHmmss-" + fileLoop);
	                   Calendar calendar = Calendar.getInstance();
	                   sysFileName = simpleDateFormat.format(calendar.getTime()); //sysFileName: 날짜-fileLoop번호
	                   
	                   list.add("원본파일명: " + orgFileName);
	                   
	                   uploadFileName =orgFileName+sysFileName+".jpg";
	                   mFile.transferTo(new File(dir + File.separator + uploadFileName)); // C:/Upload/testfile/sysFileName
	              
	                   dto.setNgPic(uploadFileName);
	                   
	               }catch(Exception e){
	                   list.add("파일 업로드 중 에러발생!!!");
	               }
					/*
					 * finally { if(fos != null) { fos.close(); } }// finally
					 */           }//if
	       }//while
		//return view;
		return "redirect:main.action";
	}
	
//	
//	@RequestMapping(value = "/groupinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
//	public String groupInsertForm(GroupDTO dto, Model model, HttpSession session, @RequestParam("ngPic") MultipartFile file) throws IllegalStateException, IOException
//	{
//		//String view = "redirect:main.action";
//		session.getAttribute("member");
//		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
//		String root = session.getServletContext().getRealPath("/");
//		String savePath = root + File.separator + "image";
//		
//		if(dto.getGrCode()!=0)
//		{
//			dao.addGroup(dto);
//			System.out.println("==================");
//			System.out.println("==== 현재 들어간 모임코드   = " + dto.getGrCode());
//			System.out.println("==================");
//		}
//		else if(dto.getGrCode()==0)
//		{
//			dao.newGroup(dto);
//			System.out.println("==================");
//			System.out.println("==== 현재 들어간 모임코드 = " + dto.getGrCode());
//			System.out.println("==================");
//		}
//		
//		File uploadFile = new File(savePath);
//		file.transferTo(uploadFile);
//		model.addAttribute("filename", file.getOriginalFilename());
//		
//		//return view;
//		return "WEB-INF/views/result.jsp";
//	}
	
	@RequestMapping(value = "/mygrouplist.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String myGroupList(MemberDTO dto, Model m, HttpSession session)
	{
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		session.getAttribute("member");
		
		System.out.println("==================");
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==================");
		
		m.addAttribute("list", dao.grSearch(dto.getMemId()));
		
		return "WEB-INF/views/meetingOpen.jsp";
	}
	
	@RequestMapping(value = "/favoritegroup.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String favoriteGroup(MemberDTO dto, Model m, HttpSession session)
	{
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		session.getAttribute("member");
		
		System.out.println("==================");
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==================");
		
		m.addAttribute("jjimGroup", dao.jjimGroup(dto.getMemId()));
		m.addAttribute("jjimHost", dao.jjimHost(dto.getMemId()));
		
		return "WEB-INF/views/jjimList.jsp";
	}
	
	@RequestMapping(value = "/pay.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String payMethod(GroupDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/Pay.jsp";
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		String id = mem.getMemId();
		dto.setMemId(id);
		String memId = dto.getMemId();
		
		int ngCode = (int) session.getAttribute("ngCode");
		
		int ngCost = dao.cost(ngCode);
		dto.setNgCode(ngCode);
		
		model.addAttribute("ngCost", ngCost);
		session.setAttribute("ngCost", ngCost);
		
		System.out.println(memId);
		System.out.println(ngCode);
		System.out.println(ngCost);
		
		return view;
	}
	
	@RequestMapping(value = "/cardpage.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String cardPage(MemberDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/CardPay.jsp";
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCost = (int)session.getAttribute("ngCost");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		String memId = dto.getMemId();

		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		MemberDTO mine = dao.myInfo(dto.getMemId());
		
		model.addAttribute("ngCost", ngCost);
		model.addAttribute("myInfo", mine);
		
		return view;
	}
	
	@RequestMapping(value = "/cardpay.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String cardPay(GroupDTO dto, Model model, HttpSession session)
	{
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCode = (int)session.getAttribute("ngCode");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		
		dto.setNgCode(ngCode);
		
		System.out.println(ngCode);
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.cardPay(dto);
		
		
		return "redirect:main.action";
	}

	// 피드백 작성 여부 확인
	@RequestMapping(value = "/selectfeed.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String selectFeed(GroupDTO dto, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		String isMemYn = dao.feedCheck(dto);
		
		System.out.println("==================");
		System.out.println("==== isMemYn = "+isMemYn);
		System.out.println("==================");
		
		return isMemYn;
	}
	
	// 후기 작성 권한 있는지 여부 확인
	@RequestMapping(value = "/selectreview.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String selectReview(GroupDTO dto, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		String isMemYn = dao.joinCheck(dto);
		
		System.out.println("==================");
		System.out.println("==== isMemYn = "+isMemYn);
		System.out.println("==================");
		
		return isMemYn;
	}
	
	
	@RequestMapping(value = "/findjoincode.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String findJoinCode(GroupDTO dto, Model model, HttpSession session)
	{
		System.out.println("==================");
		System.out.println("==== getMemId 는~?  "+ dto.getMemId());
		System.out.println("==== getNgCode 는~?  "+ dto.getNgCode());
		System.out.println("==================");
		
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		GroupDTO dto2 = new GroupDTO();
		int v = dao.feedJoinCode(dto);
		
		dto2.setJoinCode(v);
		
		
		System.out.println("==================");
		System.out.println("==== joinCode 는~?  "+ dto2.getJoinCode());
		System.out.println("==================");
		
		String joinCode = Integer.toString(dto2.getJoinCode());
		
		System.out.println("==================");
		System.out.println("==== joinCode 는~?  "+ joinCode);
		System.out.println("==================");
		
		return joinCode;
	}
	
	
	@RequestMapping(value = "/feedinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String insertFeed(HttpServletRequest req, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		int joinCode = Integer.parseInt(req.getParameter("joinCode"));
		int goodPro = Integer.parseInt(req.getParameter("goodPro"));
		int goodCal = Integer.parseInt(req.getParameter("goodCal"));
		
		System.out.println(joinCode + "  " + goodPro + "  " + goodCal);
		
		FeedBackDTO dto = new FeedBackDTO();
		dto.setJoinCode(joinCode);
		dto.setGoodPro(goodPro);
		dto.setGoodCal(goodCal);
		
		System.out.println("======= " + dto.getJoinCode());
		
		dao.feedInsert(dto);
		
		return "redirect:endgrouplist.action";
	}
	
	

	@RequestMapping(value = "/reviewinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String insertReview(HttpServletRequest req, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		int joinCode = Integer.parseInt(req.getParameter("joinCode"));
		int ngCode = Integer.parseInt(req.getParameter("ngCode"));
		double reviewStar = (double)Integer.parseInt(req.getParameter("reviewStar"));
		String reviewCont = req.getParameter("reviewCont");
		
		String result = "redirect:reviewmeeting.action?ngCode="+ngCode;
		
		System.out.println("=========  " + joinCode);
		
		MemberDTO dtoS = (MemberDTO)session.getAttribute("member");
		
		GroupDTO dto = new GroupDTO();
		dto.setMemId(dtoS.getMemId());
		dto.setJoinCode(joinCode);
		dto.setReviewCont(reviewCont);
		dto.setReviewStar(reviewStar);
		
		System.out.println("======= " + dto.getJoinCode());
		
		dao.reviewInsert(dto);
		
		return result;
	}	
	
	@RequestMapping(value = "/phonepage.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String phonePage(MemberDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/PhonePay.jsp";
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCost = (int)session.getAttribute("ngCost");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		String memId = dto.getMemId();

		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		MemberDTO mine = dao.myInfo(dto.getMemId());
		
		model.addAttribute("ngCost", ngCost);
		model.addAttribute("myInfo", mine);
		
		return view;
	}
	
	@RequestMapping(value = "/phonepay.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String phonePay(GroupDTO dto, Model model, HttpSession session)
	{
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCode = (int)session.getAttribute("ngCode");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		
		dto.setNgCode(ngCode);
		
		System.out.println(ngCode);
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.phonePay(dto);
		
		
		return "redirect:main.action";
	}
	
	@RequestMapping(value = "/bankpage.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String bankPage(MemberDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/BankPay.jsp";
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCost = (int)session.getAttribute("ngCost");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		String memId = dto.getMemId();

		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		MemberDTO mine = dao.myInfo(dto.getMemId());
		
		model.addAttribute("ngCost", ngCost);
		model.addAttribute("myInfo", mine);
		
		return view;
	}
	
	@RequestMapping(value = "/bankpay.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String bankPay(GroupDTO dto, Model model, HttpSession session)
	{
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCode = (int)session.getAttribute("ngCode");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		
		dto.setNgCode(ngCode);
		
		System.out.println(ngCode);
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.bankPay(dto);
		
		
		return "redirect:groupdetail.action?ngCode="+dto.getNgCode();
	}
	
	@RequestMapping(value = "/reviewmeeting.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String reviewMeeting(int grCode, Model m, HttpSession session)
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		m.addAttribute("reviewM", dao.reviewM(grCode));
		m.addAttribute("grCode", grCode);
		
		return "/WEB-INF/views/ReviewM.jsp";
	}
	
}
