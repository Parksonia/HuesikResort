<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input Form2</title>
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
</head>
<body>
<!-- Header -->
	<%@include file="./inc/Header.jsp"%>

<div class="container">
  <form:form modelAttribute="NewBooking" enctype="multipart/form-data" class="form-horizontal" method="post" >
     <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
						  
            <fieldset>           
            <div class="form-group row">
               <label class="col-sm-2 control-label">이름</label>
               <div class="col-sm-3">
                  <form:input path="name" class="form-control"/>
               </div>   
            </div>
            
            <div class="form-group row">
               <label class="col-sm-2 control-label">예약일자</label>
               <div class="col-sm-3">
                  <form:input path="resv_date" class="form-control" placeholder="YYYYMMDD"/>
               </div>   
            </div>
            
            <div class="form-group row">
               <label class="col-sm-2 control-label">객실타입</label>
               <div class="col-sm-3">
                  <form:input path="room_type" class="form-control"/>
               </div>   
            </div>                      
            <div class="form-group row">
               <label class="col-sm-2 control-label">주소</label>
               <div class="col-sm-3">
                  <form:input path="addr" class="form-control"/>
               </div>   
            </div>
             <div class="form-group row">
               <label class="col-sm-2 control-label">전화번호</label>
               <div class="col-sm-3">
                  <form:input path="tel" class="form-control"/>
               </div>   
            </div>
              <div class="form-group row">
               <label class="col-sm-2 control-label">입금자명</label>
               <div class="col-sm-3">
                  <form:input path="payer" class="form-control"/>
               </div>   
            </div>
            
            <div class="form-group row">
               <label class="col-sm-2 control-label">요청사항</label>
               <div class="col-sm-5">
                  <form:textarea style="resize:none;" path="comments" cols="50" rows="3" class="form-control"/>
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