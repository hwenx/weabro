<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/include.jsp"%>
<%@ page session="true" %>
<html>
<head>

<title>welcome</title>
</head>
<body>
	<!-- chatting 부분 -->
	<div class="col-md-1" style="position:absolute;z-index: 999;margin-left:50%" id="chatlayout">
            <div class="panel panel-primary" id="dragDiv">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-comment" id="chatheader"></span> Chat
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" style="display:none">
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </button>
                        <ul class="dropdown-menu slidedown">
                            <li><a href="javascript:changeId();"><span class="glyphicon glyphicon-refresh">
                            </span>대화명 변경</a></li>
                            <li><a href=""><span class="glyphicon glyphicon-ok-sign">
                            </span>귓속말</a></li>
<!--                             <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-remove">
                            </span>Busy</a></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-time"></span>
                                Away</a></li>
                            <li class="divider"></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-off"></span>
                                Sign Out</a></li> -->
                            
                        </ul>
                    </div>
                </div>
                <div class="panel-body" style="display:none;">
                    <ul class="chat">
                       <!--  <li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&amp;text=U" alt="User Avatar" class="img-circle">
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                    <span class="glyphicon glyphicon-time"></span>12 mins ago</small>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="right clearfix"><span class="chat-img pull-right">
                            <img src="http://placehold.it/50/FA6F57/fff&amp;text=ME" alt="User Avatar" class="img-circle">
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>13 mins ago</small>
                                    <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&amp;text=U" alt="User Avatar" class="img-circle">
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted">
                                        <span class="glyphicon glyphicon-time"></span>14 mins ago</small>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li>
                        <li class="right clearfix"><span class="chat-img pull-right">
                            <img src="http://placehold.it/50/FA6F57/fff&amp;text=ME" alt="User Avatar" class="img-circle">
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small>
                                    <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                </div>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare
                                    dolor, quis ullamcorper ligula sodales.
                                </p>
                            </div>
                        </li> -->
                    </ul>
                </div>
                <div class="panel-footer" style="display:none;">
                    <div class="input-group">
                        <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here...">
                        <span class="input-group-btn">
                            <button class="btn btn-warning btn-sm" id="btn-chat">
                                Send</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="jb-cell" style="text-align: center">
            <jsp:include page="./layout/header.jsp" flush="false" />
          </div>
        </div>
      </div>
     
     <div class="row">
     	<div class="col-md-12">
	     	<div class="jb-cell">
	     		<jsp:include page="./layout/body/${bodyContents}" flush="false" />
	     	</div>
     	</div>
     </div>
     
      <div class="row">
        <div class="col-md-12">
          <div class="jb-cell">
            <jsp:include page="./layout/footer.jsp" flush="false" />
          </div>
        </div>
      </div>
    </div>
	

	
</body>
<style>
.jb-cell {
  margin: 2px 0px;
  border: 1px solid #cccccc;
}
.row{
 	margin-left:-2px;
	margin-right:-2px;
	/* border: 1px solid #FF0000; */
	padding-top:10px;
}
</style>

<script type="text/javascript">				/* 모바일 draggable 플러그인 하지만 chat body 안에 스크롤 동작안함  */
require(['jquery', 'socket.io', 'jquery.ui'/* , 'jquery.touch' */], function($, io) {
	
 	  $('#chatheader').on('click', function(e){
 		  if($('.panel-body').is(':visible')){
 		  	$('#chatlayout').attr('class', 'col-md-1');
 		  }else{
 		  	$('#chatlayout').attr('class', 'col-md-3');
 		  }
 		  
		  	$('.panel-body').slideToggle();
			$('.panel-footer').slideToggle();
			$('.dropdown-toggle').slideToggle();
		  
	  });
	  
	  var loginYn = "${isLoginYn}";
	  var userId = '';
	  if('Y' === loginYn){
		  userId = '${sessionScope.email}'
	  }else{
		  userId = noMemberId();
	  }
	  var sendData = {};
	  
	  //서버에 보낼 데이터 오브젝트
	  sendData = {
		userId 		: userId,   //아이디
		beforeId	: '',		//변경전 아이디
		msg 		: '',       //메시지
		msgType 	: '',		//메시지 타입
		fromId 		: '',		//귓속말 상대
		userType 	: 'GUEST',  //사용자타입
		userState   : 'F',		//전송 타입 F=최초접속, CID=아이디변경
		picData 	: ''	    //사진
	  }
	  
	  var socket = io.connect(window.socketioAddr);
	  userInit();
	  
	  $('#btn-chat').on('click', function(e){
		  e.preventDefault();
		  sendData.msg = $('#btn-input').val();
          socket.emit('fromclient', sendData);
          $('#btn-input').val('');
          msgDisplay(sendData, 'me');
	  })
	  
	  //서버로 보냄
	  $("#btn-input").keyup(function(event) {
		  event.preventDefault();
          if (event.which == 13) {
        	  sendData.msg = $('#btn-input').val();
              socket.emit('fromclient', sendData);
              $('#btn-input').val('');
              msgDisplay(sendData, 'me');
              
          }
      });
	  
	  //서버로 부터 받음
      socket.on('toclient',function(data){
          if(data.userId === undefined){
        	  data.userId = 'Admin';
        	  sendData.userState = '';
          }
          
          if(data.userState === 'F'){
        	  data.userId = 'Admin';    	//첫 접속시에 user_id가 없음
        	  data.msg = sendData.userId + '님 접속 하였습니다';
          }
          
          //아이디 변경시 알릴 메시지
          if(data.userState === 'CID'){
        	  data.msg = data.beforeId +' --> '+data.userId + '로 아이디를 변경 하였습니다.';
        	  data.userId = 'ADMIN';
        	  sendData.userState = '';
          }
          
          msgDisplay(data, 'you');
      });
      
	  //사용자가 추가되거나 삭제 될때 마다 사용자 리스트를 받음
      socket.on('userlist', function(data){
    	  console.log('userList : ' + data.users);
      })
      
      
      //비회원아이디 생성
      function noMemberId(){
    	  var d = new Date();
    	  var id = 'GUEST'+d.getHours()+''+d.getMinutes()+''+d.getSeconds()+''+Math.floor(Math.random() * 20) + 1;
    	  return id;
      }
      
	  //사용자 초기화
      function userInit(){
    	  socket.emit('init', sendData)
      }
      
      function msgDisplay(data, type){
    	  var html = '';
    	  if('me' === type){
    		  html = '<li class="right clearfix"><span class="chat-img pull-right">'+
 	  		 '<img src="http://placehold.it/50/FA6F57/fff&amp;text=ME" alt="User Avatar" class="img-circle"></span>'+
 	  		 '<div class="chat-body clearfix">'+
 	  		 '<div class="header">'+
 	  		 '<small class=" text-muted"><span class="glyphicon glyphicon-time"></span>'+getTime()+'</small>'+
 	  		 '<strong class="pull-right primary-font">'+data.userId+'</strong>'+
 	  		 '</div>'+
 	  		 '<p>'+data.msg+'</p>'+
 	  		 '</div></li>';
    	  }else{
    		  html = '<li class="left clearfix"><span class="chat-img pull-left">'+
  	  		 '<img src="http://placehold.it/50/55C1E7/fff&amp;text=U" alt="User Avatar" class="img-circle"></span>'+
  	  		 '<div class="chat-body clearfix">'+
  	  		 '<div class="header">'+
  	  		 '<strong class="primary-font">'+data.userId+'</strong> <small class="pull-right text-muted">'+
  	  		 '<span class="glyphicon glyphicon-time"></span>'+getTime()+'</small>'+
  	  		 '</div>'+
  	  		 '<p>'+data.msg+'</p>'+
  	  		 '</div></li>';
    		  
    		  
    	  }
    	  
    	  $('.chat').append(html);
    	  //자동 스크롤 기능
    	  $('.panel-body').animate({
              scrollTop: $('.panel-body')[0].scrollHeight}, 1000);
    	  		 
      }
      
      function getTime(){
    	  var d = new Date();
    	  return d.getHours()+'시 '+d.getMinutes()+'분 '+d.getSeconds()+'초';
      }
      
      //chat div draggable
      $('#dragDiv').draggable();
      
      //모바일에서 draggable 이 작동을 하지 않아 jquery.touch을 추가 하여 가능 하게 하였지만 
      //jquery.touch를 추가 하자 모바일에서 input=text에 터치를 해도 포커스가 가지 않아 아래 구문을 추가함 
	  $('#btn-input').on('click', function(e){
    	  e.preventDefault();
	  	$(this).focus();
      });
      
      
      //아이디변경
      window.changeId = function(){
    	  var inputString = prompt('변경할 아이디를 입력 하여 주시기 바랍니다.', '영어 숫자만 사용 하실 수 있습니다.');
    	  var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
  		  var check = special_pattern.test(inputString);
  		  if(check){
  		    alert('특수문자는 사용할 수 없습니다.');
  		    return false;
  		  }
  		  sendData.beforeId =  sendData.userId;			//아이디 변경시			
  		  sendData.userState = 'CID';			//아이디 변경시			
  		  sendData.userId = inputString;
  		  userInit();
  		  
      }
      
		
      
});
</script>
</html>