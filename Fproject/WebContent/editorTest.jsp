<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>editorTest.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">

<%-- <script type="text/javascript" src="<%=cp%>/smarteditor2-master/workspace/static/js/service/HuskyEZCreator.js"></script> --%>
<script src="js/jquery-1.12.1.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<!-- include codemirror (codemirror.css, codemirror.js, xml.js, formatting.js) -->
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.css">
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/theme/monokai.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css">
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/codemirror.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/3.20.0/mode/xml/xml.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/codemirror/2.36.0/formatting.js"></script>

<!-- include summernote css/js-->
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/lang/summernote-ko-KR.js"></script>



<script type="text/javascript">
	$(document).ready(function() {
      $('#summernote').summernote({
    	  
			lang: 'ko-KR',
            height: 300,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: true,                 // set focus to editable area after initializing summernote
            fontSizes: ['4', '5', '6', '7', '8', '9', '10', '11', '12', '14', '18', '24', '36', '48' , '64', '82', '150'],
		    fontNames: ['나눔고딕코딩', '맑은고딕', '굴림', '궁서체', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', 'Helvetica', 'Impact', 'Tahoma', 'Times New Roman', 'Verdana'],
			fontNamesIgnoreCheck: ['나눔고딕코딩', '맑은고딕', '굴림', '궁서체'],
			/* fontSizeUnits: ['px', 'pt'] */
      });
      
      if ($('#summernote').summernote('isEmpty')) { 
    	  alert('내용을 입력해주세요');
    	}
      
      $('#summernote').summernote('fontSizeUnit', 'pt');
      
	});
	
	
	   
	
</script>


<%-- 
<script type="text/javascript"> 
$(function()
{
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "popContent",  //textarea ID
	    sSkinURI: "<%=cp %>/smarteditor2-master/workspace/static/js/smartEditor/SmartEditor2Skin.html",  //skin경로
	    fCreator: "createSEditor2",
	});
});
</script>
 --%>
<%-- 
<script type="text/javascript">
	var oEditors = [];
	$(function()
	{
		nhn.husky.EZCreator.createInIFrame(
		{
			oAppRef : oEditors,
			elPlaceHolder : "ir1",
			//SmartEditor2Skin.html 파일이 존재하는 경로 
			sSkinURI : "<%=cp %>/smarteditor2-master/workspace/static/js/smartEditor/SmartEditor2Skin.html",
			htParams :
			{
				// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
				bUseModeChanger : true,
				fOnBeforeUnload : function()
				{
				}
			},
			fOnAppLoad : function()
			{
				//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용 
				oEditors.getById["ir1"].exec("PASTE_HTML",
						[ "기존 DB에 저장된 내용을 에디터에 적용할 문구" ]);
			},
			fCreator : "createSEditor2"
		});
	});
</script>
 --%>

</head>
<body>

	<textarea name="content" id="summernote" value=""></textarea>
	
<!-- 
	<form id="frm" action="/insert.jsp" method="post">
		<table style=" width: 100%;">
			<tr>
				<td>제목</td>
				<td><input type="text" id="title" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" cols="30" id="ir1" name="content"
						style="width: 766px; height: 412px;"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" id="save" value="저장" /> <input
					type="button" value="취소" /></td>
			</tr>
		</table>
	</form>
 -->


</body>
</html>