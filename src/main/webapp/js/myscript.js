 /**
 *  myscript.js
 */

 function bbsCheck(){ //게시판 유효성 검사
	//1)작성자 2글자 이상 입력

			let wname = document.getElementById("wname").value;
			wname = wname.trim();
			if(wname.length<2){
				alert("작성자 2글자 이상 입력해 주세요");
				document.getElementById("wname").focus();
				return false;
			}//if end
	
	
    //2)제목 2글자 이상 입력

			let subject = document.getElementById("subject").value;
			subject = subject.trim();
			if(subject.length<2){
				alert("제목 2글자 이상 입력해 주세요");
				document.getElementById("subject").focus();
				return false;
			}//if end

    //3)내용 2글자 이상 입력

			let content = document.getElementById("content").value;
			content = content.trim();
			if(content.length<2){
				alert("내용 2글자 이상 입력해 주세요");
				document.getElementById("content").focus();
				return false;
			}//if end

    //4)비밀번호는 4글자 이상이면서, 숫자형 기호만 입력
    
    		let passwd = document.getElementById("passwd").value;
			passwd = passwd.trim();
			if(passwd.length<4 || isNaN(passwd)){
				alert("비밀번호 4글자 이상 숫자로 입력해 주세요");
				document.getElementById("passwd").focus();
				return false;
			}//if end
    
    	return true; //onsubmit 이벤트에서 서버로 전송
    	
 }//bbsCheck() end
 
 function pwCheck(){
	 
	 let passwd = document.getElementById("passwd").value;
			passwd = passwd.trim();
			if(passwd.length<4 || isNaN(passwd)){
				alert("비밀번호 4글자 이상 숫자로 입력해 주세요");
				document.getElementById("passwd").focus();
				return false;
			}//if end
			
	 let massage = "진행된 내용은 복구되지 않습니다\n계속 진행할까요?";
			if(confirm(massage)){//확인 true, 취소 false
				return true;
			}else{
				return false;
			}//if end
	 
 }//pwCheck() end
 
 function searchCheck() {//검색어를 입력해야만 서버로 전송
 
	let word = document.getElementById("word").value;
			word = word.trim();
			if(word.length==0){
				alert("검색어를 입력해 주세요");
				document.getElementById("word").focus();
				return false;
			}//if end
			
	return true;
 }//searchCheck() end
 
 function noticeCheck() {
 
			let subject = document.getElementById("subject").value;
					subject = subject.trim();
					if(subject.length<2){
						alert("제목 2글자 이상 입력해 주세요");
						document.getElementById("subject").focus();
						return false;
			}//if end


			let content = document.getElementById("content").value;
			content = content.trim();
			if(content.length<2){
				alert("내용 2글자 이상 입력해 주세요");
				document.getElementById("content").focus();
				return false;
			}//if end

    
    		let passwd = document.getElementById("passwd").value;
			passwd = passwd.trim();
			if(passwd.length<4 || isNaN(passwd)){
				alert("비밀번호 4글자 이상 숫자로 입력해 주세요");
				document.getElementById("passwd").focus();
				return false;
			}//if end
			
	return true;
	
 }//searchCheck() end
 
 
 function loginCheck(){ //로그인 유효성 검사 (아이디, 비번)
	 //1) 아이디 5~10글자 이내인지 검사
		let id = document.getElementById("id").value;
		id = id.trim();
		if(id.length<5 || id.length>10){
			alert("아이디 5~10글자 이내 입력해 주세요");
			document.getElementById("id").focus();
			return false;
		}//if end
	 
	 
	 //2) 비밀번호 5~10글자 이내인지 검사
	 	let passwd = document.getElementById("passwd").value;
		passwd = passwd.trim();
		if(passwd.length<5 || passwd.length>10){
			alert("비밀번호 5~10글자 이내 입력해 주세요");
			document.getElementById("passwd").focus();
			return false;
		}//if end
	 
	 return true;
	 
 }//loginCheck() end
			