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