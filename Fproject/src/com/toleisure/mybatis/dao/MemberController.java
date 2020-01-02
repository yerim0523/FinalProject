package com.toleisure.mybatis.dao;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

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

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.toleisure.mybatis.dto.BoardDTO;
import com.toleisure.mybatis.dto.GroupDTO;
import com.toleisure.mybatis.dto.MemberDTO;



@Controller
public class MemberController
{   
   @Autowired
   private SqlSession sqlsession;
   
   @RequestMapping(value = "/memberfindform.action", method = RequestMethod.GET)
   public String findEmail(Model m)
   {
      String view = "/WEB-INF/views/FindEmail.jsp";
      
      return view;
   }
   
   @RequestMapping(value = "/efind.action", method = {RequestMethod.POST,RequestMethod.GET})
   public String memberEfind(MemberDTO dto, Model model)
   {
      String view = "/WEB-INF/views/email.jsp";
      
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      model.addAttribute("memId", dao.efind(dto));
      
      return view;
   }
   
   @RequestMapping(value = "/findemail.action", method = {RequestMethod.POST,RequestMethod.GET})
   public String findEmail(MemberDTO dto, Model model, HttpServletRequest req)
   {
      
      String view = "/WEB-INF/views/FindEmail.jsp";
      
      
      return view;
   }
   
   
   @RequestMapping(value = "/selectMem.action", method = {RequestMethod.POST,RequestMethod.GET})
   @ResponseBody
   public String selectMem(MemberDTO dto, Model model)
   {
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      String isMemYn = dao.selectMem(dto);
      
      System.out.println("==================");
      System.out.println("==== isMemYn = "+isMemYn);
      System.out.println("==================");
      
      return isMemYn;
   }
   
   @RequestMapping(value = "/loginactive.action", method = {RequestMethod.POST,RequestMethod.GET})
   @ResponseBody
   public String loginMem(MemberDTO dto, Model model)
   {
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      String isMemYn = dao.searchMem(dto);
      
      System.out.println("==================");
      System.out.println("==== isMemYn = " + isMemYn);
      System.out.println("==== dto.getMemId = " + dto.getMemId());
      System.out.println("==== dto.getMemPw = " + dto.getMemPw());
      System.out.println("==================");
      
      return isMemYn;
   }
   
   @RequestMapping(value = "/login_success.action", method = {RequestMethod.POST,RequestMethod.GET})
   public String loginSuccess(MemberDTO dto, HttpServletRequest req)
   {
      HttpSession session = req.getSession(true);
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      
      MemberDTO login = dao.login(dto);
      
      
      
      
      if(login!=null)
      {
         session.setAttribute("member", login);
         
         int check = dao.adminCheck(login);
         
         if(check==1)
         {
            session.setAttribute("mode", 1);
         }
         else 
         {
            session.setAttribute("mode", 0);
         }
            
      
      }
            
      System.out.println("==================");
      System.out.println("==== dto.getMemId = " + dto.getMemId());
      System.out.println("==== dto.getMemPw = " + dto.getMemPw());
      System.out.println("==================");
      
      return "redirect:main.action";
   }
   
   @RequestMapping(value = "/logout.action", method = {RequestMethod.POST,RequestMethod.GET})
   public String logout(MemberDTO dto, HttpServletRequest req)
   {
      HttpSession session = req.getSession();
      
      session.invalidate();
            
      System.out.println("==================");
      System.out.println("==== dto.getMemId = " + dto.getMemId());
      System.out.println("==== dto.getMemPw = " + dto.getMemPw());
      System.out.println("==================");
      
      return "redirect:main.action";
   }
   
   @RequestMapping(value = "/mypage.action", method = {RequestMethod.POST,RequestMethod.GET})
   public String myPageMain(MemberDTO dto, Model model, HttpSession session)
   {
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      MemberDTO mine = dao.myInfo(dto.getMemId());
      
      model.addAttribute("myInfo", mine);
      
      System.out.println("==================");
      System.out.println("==== dto.getMemId = " + dto.getMemId());
      System.out.println("==== dto.getMemPw = " + dto.getMemPw());
      System.out.println("==================");
      
      return "/WEB-INF/views/MyPage.jsp";
   }
   
   @RequestMapping(value = "/infomodify.action", method = {RequestMethod.POST,RequestMethod.GET})
   public String myPageModify(MemberDTO dto, Model model, HttpSession session)
   {
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      MemberDTO mine2 = dao.myInfo(dto.getMemId());
      
      session.getAttribute("member");
      session.setAttribute("myInfo", mine2);
      
      
      System.out.println("==================");
      System.out.println("==== dto.getMemId = " + dto.getMemId());
      System.out.println("==================");
      
      return "/WEB-INF/views/My_modify.jsp";
   }
   
   @RequestMapping(value = "/idCheck.action", method = {RequestMethod.POST,RequestMethod.GET})
   @ResponseBody
   public String idCheck(MemberDTO dto, Model model)
   {
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      String idCheckYn = dao.idCheck(dto);
      
      return idCheckYn;
   }
   
   @RequestMapping(value = "/memberinsertForm.action", method = RequestMethod.GET)
   public String memberInsert(Model model)
   {
      String view = "WEB-INF/views/join.jsp";
      
      return view;
   }
   
   @RequestMapping(value = "/memberinsert.action", method = RequestMethod.POST)
   public String memberinsert(MemberDTO m, MultipartHttpServletRequest request)
   {
      String view = "WEB-INF/views/joinTest.jsp";
      
      String rootUploadDir = "C:"+File.separator+"Upload"; // C:/Upload
      
      File dir = new File(rootUploadDir + File.separator + "testfile"); 
      
      if(!dir.exists()) { //업로드 디렉토리가 존재하지 않으면 생성
          dir.mkdirs();
      }
      
      Iterator<String> iterator = request.getFileNames(); //업로드된 파일정보 수집(2개 - file1,file2)
      
      int fileLoop = 0;
      String uploadFileName;
      MultipartFile mFile = null;
      String orgFileName = ""; //진짜 파일명
      String sysFileName = ""; //변환된 파일명

      
      
      String memPic = "";
      while(iterator.hasNext()) {
          fileLoop++;
          
          uploadFileName = iterator.next();
          mFile = request.getFile(uploadFileName);
          
          orgFileName = mFile.getOriginalFilename();    
          System.out.println(orgFileName);
          
          
          if(orgFileName != null && orgFileName.length() != 0) { //sysFileName 생성
              System.out.println("if문 진입");
              SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMDDHHmmss-" + fileLoop);
              Calendar calendar = Calendar.getInstance();
              sysFileName = simpleDateFormat.format(calendar.getTime()); //sysFileName: 날짜-fileLoop번호
              
              
              try {
                  System.out.println("try 진입");
                  mFile.transferTo(new File(dir + File.separator + sysFileName)); // C:/Upload/testfile/sysFileName
					/* list.add("원본파일명: " + orgFileName + ", 시스템파일명: " + sysFileName); */
                  memPic="원본파일명: " + orgFileName + ", 시스템파일명: " + sysFileName;
                  m.setMemPic(memPic);
              }catch(Exception e){
                 memPic="파일 업로드 중 에러발생!!!";
                 m.setMemPic(memPic);
              }
          }//end if
      }//end while
     
     



      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      System.out.println("=====" + m.getMemId());
      dao.add(m);
      
      return view;
      
   }
   
   @RequestMapping(value="/fileuploadtest.action", method = RequestMethod.POST)
   public String fileUploadTest(MultipartHttpServletRequest request, Model model) {
       
       String rootUploadDir = "C:"+File.separator+"Upload"; // C:/Upload
       
       File dir = new File(rootUploadDir + File.separator + "testfile"); 
       
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
               SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMDDHHmmss-" + fileLoop);
               Calendar calendar = Calendar.getInstance();
               sysFileName = simpleDateFormat.format(calendar.getTime()); //sysFileName: 날짜-fileLoop번호
               
               
               try {
                   System.out.println("try 진입");
                   mFile.transferTo(new File(dir + File.separator + sysFileName)); // C:/Upload/testfile/sysFileName
                   list.add("원본파일명: " + orgFileName + ", 시스템파일명: " + sysFileName);
                   
               }catch(Exception e){
                   list.add("파일 업로드 중 에러발생!!!");
               }
           }//if
       }//while
       
       model.addAttribute("list", list);
       
       return "WEB-INF/views/joinTest.jsp";
   }





   
   @RequestMapping(value = "/memberpasswordform.action", method = RequestMethod.GET)
   public String finePassword(Model model)
   {
      String view = "/WEB-INF/views/FindPassword.jsp";
      
      /* IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class); */
      
      return view;
   }
   
   @RequestMapping(value = "/findpassword.action", method = {RequestMethod.POST,RequestMethod.GET})
   public String findPw(MemberDTO dto, Model model)
   {
      String view = "/WEB-INF/views/FindPassword.jsp";
      
      
      return view;
   }
   
   
   @RequestMapping(value = "/selectPmp.action", method = {RequestMethod.POST,RequestMethod.GET})
   @ResponseBody
   public String selectPmem(MemberDTO dto, Model model)
   {
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      String isMem = dao.selectPmp(dto);
      
      System.out.println("==================");
      System.out.println("==== isMem = "+isMem);
      System.out.println("==================");
      
      return isMem;
   }
   
   @RequestMapping(value = "/password.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String memberPfind(MemberDTO dto, Model model, HttpSession session)
   {
      session.getAttribute("member");
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      MemberDTO find = dao.password(dto);
      
      System.out.println("memid = " + dto.getMemId());
      System.out.println("mempw = " + dto.getMemPw());
      
      session.setAttribute("memId", find);
      
      return "/WEB-INF/views/ChangePassword.jsp";
      
   }
   
   @RequestMapping(value = "/updatePw.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String updatePw(MemberDTO dto, Model model, HttpSession session)
   {
      session.getAttribute("member");
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      session.getAttribute("memId");
      
      System.out.println("memid = " + session.getAttribute("memId"));
      System.out.println("mempw = " + dto.getMemPw());
      
      dao.updatePw(dto);
      
      return "/WEB-INF/views/login.jsp";
      
   }
   
   @RequestMapping(value = "/mypwmodify.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String myPagePwmodify(MemberDTO dto, Model model, HttpSession session)
   {
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      MemberDTO mine2 = dao.myInfo(dto.getMemId());
      
      session.getAttribute("member");
      session.setAttribute("myId", mine2.getMemId());
      
      System.out.println("==================");
      System.out.println("==== dto.getMemId = " + dto.getMemId());
      System.out.println("==================");
      
      return "/WEB-INF/views/pw_modify.jsp";
   }
   
   @RequestMapping(value = "/pwCheck.action", method = {RequestMethod.POST, RequestMethod.GET})
   @ResponseBody
   public String pwCheck(MemberDTO dto, HttpSession session)
   {
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      session.getAttribute("member");
      session.getAttribute("myId");
      /* System.out.println(dto.getMemPw()); */
      
      String pwCheck = dao.pwCheck(dto);
      System.out.println(pwCheck);
      
      return pwCheck;
   }
   
   
   @RequestMapping(value = "/memPwModify.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String pwModify(MemberDTO dto, Model model, HttpSession session)
   {
      session.getAttribute("member");
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      /* session.getAttribute("myId"); */
      
      dao.updatePw(dto);
      
      return "mypage.action";
   }
   
   
   @RequestMapping(value = "/infoupdate.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String infoModify(MemberDTO dto, Model model, HttpSession session)
   {
      session.getAttribute("member");
      
      IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
      
      dao.infoUpdate(dto);
      
      return "mypage.action"; 
   }
   
   @RequestMapping(value="/mycal.action", method ={ RequestMethod.GET, RequestMethod.POST })
   public String calOpen(MemberDTO dto, Model model, HttpSession session)
   {
      System.out.println("-------1");
      String view = "WEB-INF/views/myCalendar.jsp";
      IMypageDAO dao = sqlsession.getMapper(IMypageDAO.class);
      
      System.out.println("-------2");
      
      session.getAttribute("member");
      
      System.out.println("-------3");
      
      MemberDTO mine = (MemberDTO)session.getAttribute("member");
      String memId = mine.getMemId();
      
      System.out.println("-------4");
      System.out.println(memId);
      
      ArrayList<GroupDTO> list = dao.myCalendar(memId);
      
      model.addAttribute("myCal", list);
      
      
      return view;
   }
   @RequestMapping(value = "/map.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String Map(MemberDTO dto, Model model, HttpSession session)
   {
      
       IMemberDAO dao =  sqlsession.getMapper(IMemberDAO.class);
       session.getAttribute("member"); 
   
         
         ArrayList<GroupDTO> location = dao.map();
         
         model.addAttribute("location", location);
       /* dto = (MemberDTO)session.getAttribute("member"); String memId =
       * dto.getMemId();
       * 
       * System.out.println("====== 넘어가는 아이디 : " + memId);
       * 
       * model.addAttribute("endGroup", dao.myEndGroup(memId));
       */
      
      return "/WEB-INF/views/Map.jsp"; 
   }
   
   @RequestMapping(value="/mycalnext.action", method ={ RequestMethod.GET, RequestMethod.POST })
   public String calNextOpen(int month,MemberDTO dto, Model model, HttpSession session)
   {
      System.out.println("-------1");
      String view = "WEB-INF/views/myCalendar.jsp";
      IMypageDAO dao = sqlsession.getMapper(IMypageDAO.class);
      
      System.out.println("-------2");
      
      session.getAttribute("member");
      
      System.out.println("-------3");
      
      MemberDTO mine = (MemberDTO)session.getAttribute("member");
      mine.setMonth(month);
      String memId = mine.getMemId();
      
      System.out.println("-------4");
      System.out.println(memId);
      
      ArrayList<GroupDTO> list = dao.myNextCalendar(mine);
      
      model.addAttribute("myCal", list);
      
      
      return view;
   }
   @RequestMapping(value = "/nowgrouplist.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String nowGroup(MemberDTO dto, Model model, HttpSession session)
   {
      session.getAttribute("member");
      IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
      
      dto = (MemberDTO)session.getAttribute("member");
      String memId = dto.getMemId();
      
      System.out.println("====== 넘어가는 아이디 : " + memId);
      
      model.addAttribute("nowGroup", dao.myNowGroup(memId));
      
      
      return "/WEB-INF/views/mylist.jsp"; 
   }
   
   
   @RequestMapping(value = "/endgrouplist.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String endGroup(MemberDTO dto, Model model, HttpSession session)
   {
      session.getAttribute("member");
      IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
      
      dto = (MemberDTO)session.getAttribute("member");
      String memId = dto.getMemId();
      
      System.out.println("====== 넘어가는 아이디 : " + memId);
      
      model.addAttribute("endGroup", dao.myEndGroup(memId));
      
      return "/WEB-INF/views/myEndList.jsp"; 
   }
   
   
   
   @RequestMapping(value = "/map2.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String Map2(MemberDTO dto, Model model, HttpSession session)
   {
      /*
       * session.getAttribute("member"); IGroupDAO dao =
       * sqlsession.getMapper(IGroupDAO.class);
       * 
       * dto = (MemberDTO)session.getAttribute("member"); String memId =
       * dto.getMemId();
       * 
       * System.out.println("====== 넘어가는 아이디 : " + memId);
       * 
       * model.addAttribute("endGroup", dao.myEndGroup(memId));
       */
      
      return "/WEB-INF/views/Map2.jsp"; 
   }
   
   @RequestMapping(value = "/fileupload.action", method = {RequestMethod.POST, RequestMethod.GET})
   public String fileUpload(MemberDTO dto, Model model, HttpSession session)
   {
      return "/WEB-INF/views/FileTest2.jsp"; 
   }
   

}