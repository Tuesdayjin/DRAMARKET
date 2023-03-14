
//화면전환 효과
window.onload = function() {
	const transitionbox = document.querySelector('.pageTransition-box');
	transitionbox.classList.add('shrink');
}

//to top button
document.addEventListener("DOMContentLoaded", function() {
	// DOM이 완전히 로드된 후에 스크립트가 실행
	let mybutton = document.getElementById("myBtn");

	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20
			|| document.documentElement.scrollTop > 20) {
			mybutton.style.display = "block";
			mybutton.style.backgroundColor = "#FFD369";
		} else {
			mybutton.style.display = "none";
		}
	}

	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
});

//메인의 업로드 버튼 클릭시 색깔 변경
		document.querySelector(".uploadBtn").addEventListener("click",
				function() {
					this.style.backgroundColor = "#FFD369";
				});
				
				