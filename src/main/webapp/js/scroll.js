
                // 1) 스크롤하고자 하는 이미지를 전역변수에 저장
                let ctnt=[];
                ctnt[0]="<img src='./images/DANEL.jpeg  '>";
                ctnt[1]="<img src='./images/PHOTO1.jpeg'>";
                ctnt[2]="<img src='./images/HANI.jpeg   '>";
                ctnt[3]="<img src='./images/PHOTO2.jpeg'>";
                ctnt[4]="<img src='./images/MINJI.jpeg '>";
                ctnt[5]="<img src='./images/PHOTO3.jpeg'>";
                ctnt[6]="<img src='./images/HAEIN.jpeg '>";
                ctnt[7]="<img src='./images/HAELIN.jpeg'>";
    
                //2) 1)에서 준비한 이미지를 id=mydiv에 배치하기
                function start() {
                   
                    let left=90;
                    for(n=0; n<ctnt.length; n++) {
                    document.write("<div id='area"+n+"'style='position:absolute; top:0; left:"+(210*n)+"px'>");
                    document.write(ctnt[n]);
                    document.write("</div>");
                    }
    
                    setTimeout(scroll, 1000);
                }//start() end
    
                function scroll() {
                   
                    for(n=0; n<ctnt.length; n++) {
                        let tmp=document.getElementById("area"+n).style;
                        tmp.left = parseInt(tmp.left)-1 + "px"
    
                        //7) 이미지 순환하기 위해서 이미지를 다시 배치
                        if(parseInt(tmp.left)<=-210) {//id=mydiv 영역을 벗어났는지?
                            tmp.left = (ctnt.length-1) * 210 + "px";
                        }
                    }
    
                    //7) 0.5초 후에 scroll 함수 호출
                    timer = setTimeout(scroll,10);
    
                }//scroll end
    
                //12) 6)의 시간을 해제
                var timer; //전역변수
    
                function killtime() {
                    clearTimeout(timer);
                }//killtime end
               
