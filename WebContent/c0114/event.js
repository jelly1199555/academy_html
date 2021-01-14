//이 파일명은 event.js
// <body onload="kaja();"> //웸페이지가 로딩될때 /이러면 여기에 html이들어감
window.onload = function() // 객체.속성=값 --> .이벤트=이벤트처리함수
{// tag사용없이 load
	var kong = document.getElementById('kong'); // 아이디
	// 객체
	if (kong != null) // 객체가 만들어졌으면
	{ // 평강공주러브라인버튼을 누르면--> jjik처리하러가
		if (kong.addEventListener) // 이거 쓸 수 있어? 표준형사용이 가능해
			kong.addEventListener('click', Kaja.JJIK, false); // 표준형
		else                               // 함수 //event-capture x
			kong.attachEvent('onclick', Kaja.JJIK); // ie 위에꺼가 안되면 낮은 버전이라
													// 이걸쓰라는얘기,
		                                            // 근데 이건 캡쳐기능이없음
	}// if-end //document.form1.onclick=kaja //ie7, 8
}// function-end

var Kaja ={ //가자는 객체 속성은 안보이는데 
		//브라우저마다 맞춰서 하자 : cross browsing
		JJIK: function(event){ // 찍메소드, 제이슨, 이벤트가 뭐냐-원래 필요없지만 '표준형'에서 찾아오는통로가 
			                                             //기본적으로 event를 통함 그래서 쓴다
			                                             //표준형으로 맞추려고
			
			if(document.getElementById('kaja1') != null //에러가 아니면, //이거 준비된디브태그
				&& document.getElementById('kaja2') != null)
				{
					document.getElementById('kaja1').innerHTML = "babo"
						document.getElementById('kaja2').innerHTML = "ondal"
						//얘네 둘다 디브태그, 디브 내부에다 글자 넣어라
				}
		}// JJIK메소드-end
}// kaja-객체-end
	