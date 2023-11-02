<%@page import="org.springframework.web.bind.annotation.RequestAttribute"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input Form</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- datepicker 한글설정 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style>
.container{
margin-top:10%;
width:100%;
height:100%; 
display: flex;
justify-content: space-evenly;
align-items: center;
}
</style>

<body>
<%String type = request.getParameter("type");
  String date = request.getParameter("date");%>
<!-- Header -->
	<%@include file="./inc/Header.jsp"%>

<div class="container">
  
  
  <form:form modelAttribute="NewBooking" enctype="multipart/form-data" class="form-horizontal" method="post" >
    
     <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
						   
    <fieldset>   
    <label class="col-sm-2 control-label">예약일자</label>
    <div>
    <form:input type="text" path="resv_date" id="datepicker" readonly="true" placeholder="날짜를 선택하세요"/>
    </div>
     <script type="text/javascript">
       	var reservedDate =[];
       	reservedDate.push(<c:out value='${reserved_date}'/>);
   		console.log(reservedDate);
       	
        $("#datepicker").datepicker({
        	dateFormat:'yy-mm-dd', //dateformat
        	minDate :  "<%=date%>",
        	maxDate : "<%=date%>",
        	autoclose:true // 날짜 클릭 시 자동 닫힘
        });
    </script>
                    
            <div class="form-group row">
               <label class="col-sm-2 control-label">이름</label>
               <div class="col-sm-3">
                  <form:input path="name" class="form-control" required="required"/>
               </div>   
            </div>
            
            <div class="form-group row">
               <label class="col-sm-2 control-label">객실타입</label>
               <div class="col-sm-3">
                  <form:select path="room_type" class="form-control" required="required">
                  	<form:option value="1" >S25 포레스트</form:option>
                  	<form:option value="2" >S30 포레스트</form:option>
                  	<form:option value="3" >G40 포레스트</form:option>                  
                  </form:select>
               </div>   
            </div>                      
            <div class="form-group row">
               <label class="col-sm-2 control-label">주소</label>
               <div class="col-sm-3">
                  <form:input path="addr" class="form-control" required="required"/>
               </div>   
            </div>
             <div class="form-group row">
               <label class="col-sm-2 control-label">전화번호</label>
               <div class="col-sm-3">
                  <form:input path="tel" class="form-control" required="required"/>
               </div>   
            </div>
              <div class="form-group row">
               <label class="col-sm-2 control-label">입금자명</label>
               <div class="col-sm-3">
                  <form:input path="payer" class="form-control" required="required"/>
               </div>   
            </div>
            
            <div class="form-group row">
               <label class="col-sm-2 control-label">요청사항</label>
               <div class="col-sm-5">
                  <form:textarea style="resize:none;" path="comments" cols="50" rows="3" class="form-control" required="required"/>
               </div>
            </div>

            <div class="form-group row">
               <div class="col-sm-offset-2 col-sm-10">
                  <input type="submit" class="btn btn-primary" value="등록">
               </div>
            </div>
            </fieldset>
            </form:form>
</div>
</body>


</html>