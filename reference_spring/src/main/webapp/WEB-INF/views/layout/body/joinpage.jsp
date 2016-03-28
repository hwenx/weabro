<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-md-12">
		<div class="page-header">
			<h1>
				회원가입 <small>일반회원가입</small>
			</h1>
		</div>
		<form class="form-horizontal" action="./joinpage/joinprocess" method="post">
			<div class="form-group">
				<label for="inputEmail" class="col-sm-2 control-label">이메일</label>
				<div class="col-sm-6">
					<input type="email" class="form-control" id="inputEmail"
						placeholder="이메일">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="inputPassword"
						placeholder="비밀번호">
					<p class="help-block" id="passCheck">5자리 이상</p>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPasswordCheck" class="col-sm-2 control-label">비밀번호
					확인</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="inputPasswordCheck"
						placeholder="비밀번호 확인">
					<p class="help-block" id="passAgreeCheck">비밀번호를 한번 더 입력해주세요.</p>
				</div>
			</div>
			<!-- <div class="form-group">
				<label for="inputRipple" class="col-sm-2 control-label">리플주소</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="inputRipple"
						placeholder="리플주소">
				</div>
			</div> -->
			<div class="form-group">
				<label for="inputName" class="col-sm-2 control-label">이름</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="inputName"
						placeholder="이름">
				</div>
			</div>
			<!-- <div class="form-group">
				<label for="inputNumber" class="col-sm-2 control-label">휴대폰번호</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="inputNumber"
						placeholder="휴대폰번호">
					<p class="help-block">- 없이 적어주세요.</p>
				</div>
				<div class="col-sm-2">
					<a class="btn btn-default" href="#" role="button">인증번호 전송</a>
				</div>
			</div>
			<div class="form-group">
				<label for="inputNumberCheck" class="col-sm-2 control-label">인증번호
					확인</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="inputNumberCheck"
						placeholder="이름">
					<p class="help-block">전송된 인증번호를 입력해주세요.</p>
				</div>
			</div>
			<div class="form-group">
				<label for="inputAgree" class="col-sm-2 control-label">약관 동의</label>
				<div class="col-sm-6 checkbox">
					<label> <input id="agree" type="checkbox"> <a
						href="/agreement"> 이용약관</a>에 동의합니다.
					</label>
				</div>
			</div> -->
			<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">대표 이미지</label>
				<div class="col-sm-6">
					<img src="${pageContext.request.contextPath}/resources/images/no-thumb.png" class="img-thumbnail" alt="Cinque Terre" width="204" height="136" onclick="$('#fileInput').click();" id="pictureselector" style="cursor:crosshair">
					<form>
						<input type="file" id="fileInput" style="display:none"/>
					</form>
					
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputName" class="col-sm-2 control-label"></label>
				<div class="col-sm-6">
					<button type="button" class="btn btn-primary" onclick="joinProcess();">회원가입</button>
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">

requirejs([ 'jquery', 'bootstrap' ], function($) {
	window.readURL = function(input) {
		console.log(input.files[0].name);
		var fileSuffix = input.files[0].name.substring(input.files[0].name.lastIndexOf(".") + 1);
		console.log(fileSuffix);
	    fileSuffix = fileSuffix.toLowerCase();
	    if ( "jpg" == fileSuffix || "jpeg" == fileSuffix  || "gif" == fileSuffix || "bmp" == fileSuffix ){
	    }else{
	    	alert('이미지 파일이 압니다.');
	    	return;
	    } 
	        
	    
	    
        if (input.files && input.files[0]) {
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#pictureselector').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }
    }//readURL()--

    //file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
    $("#fileInput").change(function(){
        //alert(this.value); //선택한 이미지 경로 표시
        readURL(this);
    });
	
/* 	$('#fileInput').on('change', function(e){
		console.log(e);
	}) */
	
	window.emailcheck = function(strValue) {
		var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
		//입력을 안했으면
		if (strValue.lenght === 0 || strValue === '') {
			alert('이메일을 입력하지 않았습니다.')
			return false;
		}
		//이메일 형식에 맞지않으면
		if (!strValue.match(regExp)) {
			alert('이메일 형식에 맞지 않습니다.')
			return false;
		}
		return true
	}
	
	window.passCheck = function(){
		var pass = $('#inputPassword').val();
		var checkpass = $('#inputPasswordCheck').val(); 
		
		if(pass === '' || checkpass === ''){
			alert('비밀번호가 정확하지 않습니다.');
			return false;
		}
		if(pass !== checkpass){
			alert('두 비밀 번호가 맞지 않습니다.')
			return false;
		}
		
		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
		var check = special_pattern.test(pass);
		if(check){
		    alert('특수문자는 사용할 수 없습니다.');
		    return false;
		}
		
		return true
	}
	
	window.joinProcess = function(){
		var email = $('#inputEmail').val();
		//1. 이메일 검사
		if(!emailcheck(email)) return;
		
		//2. 비밀번호 검사
		if(!passCheck()) return;
		
		//3. 이름 검사
		var name = $('#inputName').val();
		if(name === '' || name.length ===0){
			alert('이름을 입력하지 않으셧습니다.');
			return;
		}
		
		//4. 프로필 사진 유무 검사
		console.log();
		var file = $('#fileInput').val();
		if(file === '' || file === null){
			alert('프로필 사진은 필수 입니다.');
			return;
		}
		
	}
	
	
	//---------------이메일 중복 검사 ajax로 중복 검사 구현 필요
	$('#inputEmail').on('keyup', function(){
		
		
	})
	
	//---------------패스워드 이벤트 관련		
	$('#inputPassword').on('keyup', function(){
		var length = this.value.length;
		if(length < 5){
			$('#passCheck').css('color', 'red').text('5자리 이상 입력 하여 주시기 바랍니다.');
		}else{
			$('#passCheck').css('color', '').text('사용 가능');
		}
	})
	
	$('#inputPasswordCheck').on('keyup', function(){
		var pass = $('#inputPassword').val();
		var currentPass = this.value;
		if(pass !== currentPass){
			$('#passAgreeCheck').css('color', 'red').text('불일치');
		}else{
			$('#passAgreeCheck').css('color', '').text('일치');
		}
	})
	
	

});
</script>