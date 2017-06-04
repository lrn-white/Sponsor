<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
        .container {
            width: 100px;
            margin: 0 auto;
        }
        .container img{
            width: 45%;
            margin-right: 5%;
            margin-bottom: 30px;
            float: left;
        }
        #popup{
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            text-align: center;
            display: none;
        }
        #popup .bg{
            background-color: rgba(0,0,0,0.5);
            width: 100%;
            height: 100%;
        }
        @media \0screen\,screen\9 {
            #popup .bg{
                background-color:#000000;
                filter:Alpha(opacity=50);
                position:static;
            }
            #popup .bg img{
                position: relative;
            }
        }
        #popup img{
            max-width: 100%;
            max-height: 100%;
        }
    </style>
</head>
<body>
<div id="container" class="container">
    <img src="img/st1.jpg" alt=""/>
</div>
<div id="popup">
    <div class="bg"><img src="" alt=""/></div>
</div>
<script type="text/javascript">
    var imgs = document.getElementById("container").getElementsByTagName("img");
    var lens = imgs.length;
    var popup = document.getElementById("popup");

    for(var i = 0; i < lens; i++){
        imgs[i].onclick = function (event){
            event = event||window.event;
            var target = document.elementFromPoint(event.clientX, event.clientY);
            showBig(target.src);
        }
    }
    popup.onclick = function (){
        popup.style.display = "none";
    }
    function showBig(src){
        popup.getElementsByTagName("img")[0].src = src;
        popup.style.display = "block";
    }
</script>
</body>
</html>