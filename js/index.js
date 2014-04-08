$(function(){
	$("#home").on('click',function(){
		window.location.href="index.html";
	});
	$("#about").on('click',function(){
		window.location.href="about.html";
	});
	$("#contact").on('click',function(){
		window.location.href="contact.html";
	});

	$("#team").on('click',function(){ 
		window.location.href="team.html";
	});

	$("#seveice").on('click',function(){ 
		window.location.href="service.html";
	});

	$("#classic").on('click',function(){ 
		window.location.href="classiccase.html";
	});


	$("#baowangao").on('click',function(){
		window.location.href="users/baowangaolawyer.html";
	});

	$("#jiangdeyun").on('click',function(){
		window.location.href="users/jiangdeyunlawyer.html";
	});

	$("#huangpeng").on('click',function(){
		window.location.href="users/huangpenglawyer.html";
	});

	$("#wenwei").on('click',function(){
		window.location.href="users/wenweilawyer.html";
	});

	$("#jiangyu").on('click',function(){
		window.location.href="users/jiangyulawyer.html";
	});

	$("#baowanchao").on('click',function(){
		window.location.href="service.html";
	});


	$("#favorites").on('click',function () {　　　　//$里面是链接的id  

	    var ctrl = (navigator.userAgent.toLowerCase()).indexOf('mac') != -1 ? 'Command/Cmd' : 'CTRL';  

	    if (document.all) {  

			window.external.addFavorite('http://www.guanfulaw.com', '观复律师事务所')  

	    } else if (window.sidebar) {  

			window.sidebar.addPanel('观复律师事务所', 'http://www.guanfulaw.com', "")  

	    } else {　　　　//添加收藏的快捷键  

			alert('浏览器拒绝，添加失败\n您可以尝试通过快捷键' + ctrl + ' + D 加入到收藏夹~')  

	    }  

	});  

	//设置主页  

	$("#addHomePage").on('click',function () { 

		 if (document.all) {//设置IE  

			document.body.style.behavior = 'url(#default#homepage)';  

			document.body.setHomePage(document.URL);  

		} else {//网上可以找到设置火狐主页的代码，但是点击取消的话会有Bug，因此建议手动设置  
			alert("浏览器拒绝，设置首页失败，请手动设置！");  
		 }  
	});  

});