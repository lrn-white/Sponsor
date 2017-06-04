<%@ page language="java" import="java.sql.*,java.util.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'com-list.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<%-- <link
	href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> --%>

<%-- <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<SCRIPT type="text/javascript">
	function del() {
		var result = confirm("你确定删除吗？");
		if (result) {
			return true;
		} else {
			return false;
		}
	} --%>
	
<link rel="stylesheet" href="background/bootstrap/css/bootstrap.min.css">
<script src="background/bootstrap/jquery.min.js"></script>
<script src="background/bootstrap/js/bootstrap.min.js"></script>

<style>
        .container {
            width: 100px;
            margin: 0 auto;
        }
        .container img{
            width: 45%;
            /* margin-right: 30%;
            margin-bottom: 30px; */
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
	<h4 style="text-align: center;">公司信息列表</h4>

	<s:if test="#request.companys == null|| #request.companys.size() ==0">
		没有任何公司信息
	</s:if>
	<s:else>
		<table class="table">
			<tr>
				<td>公司编号</td>
				<td style="text-indent: 12em;">公司营业执照</td>
				<td class="warning">审核结果</td>
				<td class="warning">删除信息</td>
				<td class="warning">审核</td>
			</tr>
			 
			<s:iterator value="#request.companys">
				<tr>
					<td>${cpNum }</td>
					<td>
					<div id="container" class="container">
    					<img src="${cpIcon }"/>
					</div>
					<div id="popup">
							<div class="bg">
								<img src="" alt="" />
							</div>
						</div>
					</td>
					<!-- <div id="container" class="container">
    					<img src="img/st1.jpg" alt=""/>
					</div> -->
					<td>${cpAudit }</td>
					<td><a href="cp-cpdelete?id=${cpNum }" class="del">删除</a></td>
					<td><a href="cp-cpupdate?id=${cpNum }">通过</a></td>
				</tr>
			</s:iterator>
	</s:else>
	
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
