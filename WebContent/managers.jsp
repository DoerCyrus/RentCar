<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- 导入jquery样式相关的css文件 -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/jquery-ui.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->

<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- /js -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-ui.js"></script>
<!-- //js-->
 <style type="text/css">

        #all_light { /*整个弹窗的页面*/
            opacity: 0.8; /*透明度*/
            width: 100%; /*宽度*/
            height: 500px; /*高度，不能百分百*/
            background: skyblue; /*背景色*/
            position: absolute;
            top: 0;
            left: 0; /*定位*/
            display: none; /*隐藏*/
            z-index:1; /*覆盖*/
        }

        #contes { /* 弹框的页面*/
           
            background: #fff; /*背景色*/
            display: none; /*隐藏*/
            z-index: 2; /*覆盖*/
            position: absolute;
            top: 0;
            left: 300px; /* 定位*/
        }

</style>
<style type="text/css">
    .elegant-aero {
    margin-left:auto;
    margin-right:auto;

    max-width: 500px;
    background: #D2E9FF;
    padding: 20px 20px 20px 20px;
    font: 12px Arial, Helvetica, sans-serif;
    color: #666;
    }
    .elegant-aero h1 {
    font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
    padding: 10px 10px 10px 20px;
    display: block;
    background: #C0E1FF;
    border-bottom: 1px solid #B8DDFF;
    margin: -20px -20px 15px;
    }
    .elegant-aero h1>span {
    display: block;
    font-size: 11px;
    }

    .elegant-aero label>span {
    float: left;
    margin-top: 10px;
    color: #5E5E5E;
    }
    .elegant-aero label {
    display: block;
    margin: 0px 0px 5px;
    }
    .elegant-aero label>span {
    float: left;
    width: 20%;
    text-align: right;
    padding-right: 15px;
    margin-top: 10px;
    font-weight: bold;
    }
    .elegant-aero input[type="text"], .elegant-aero input[type="email"], .elegant-aero textarea, .elegant-aero select {
    color: #888;
    width: 70%;
    padding: 0px 0px 0px 5px;
    border: 1px solid #C5E2FF;
    background: #FBFBFB;
    outline: 0;
    -webkit-box-shadow:inset 0px 1px 6px #ECF3F5;
    box-shadow: inset 0px 1px 6px #ECF3F5;
    font: 200 12px/25px Arial, Helvetica, sans-serif;
    height: 30px;
    line-height:15px;
    margin: 2px 6px 16px 0px;
    }
    .elegant-aero textarea{
    height:100px;
    padding: 5px 0px 0px 5px;
    width: 70%;
    }
    .elegant-aero select {
    background: #fbfbfb url('down-arrow.png') no-repeat right;
    background: #fbfbfb url('down-arrow.png') no-repeat right;
    appearance:none;
    -webkit-appearance:none;
    -moz-appearance: none;
    text-indent: 0.01px;
    text-overflow: '';
    width: 70%;
    }
    .elegant-aero .button{
    padding: 10px 30px 10px 30px;
    background: #66C1E4;
    border: none;
    color: #FFF;
    box-shadow: 1px 1px 1px #4C6E91;
    -webkit-box-shadow: 1px 1px 1px #4C6E91;
    -moz-box-shadow: 1px 1px 1px #4C6E91;
    text-shadow: 1px 1px 1px #5079A3;

    }
    .elegant-aero .button:hover{
    background: #3EB1DD;
    }
    
    
</style>
<%@ page import="java.util.*" %>
<%@ page import="cn.ch.dao.*,cn.ch.bean.*,cn.ch.util.*" %>
<%
	List<Manager> managers = new ArrayList<Manager>();
	managers = ManagerDao.getAllManagers();
	String path = pageContext.getServletContext().getContextPath();
%>


</head>
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="inner-content">
				<!-- header-starts -->
				<div class="header-section">
					<!--menu-right-->
					<div class="top_menu">
						<div class="main-search">
							<form>
								<input type="text" value="Search" onFocus="this.value = '';"
									onBlur="if (this.value == '') {this.value = 'Search';}"
									class="text" /> <input type="submit" value="" />
							</form>
							<div class="close">
								<img src="images/cross.png" />
							</div>
						</div>
						<div class="srch">
							<button></button>
						</div>
						<script type="text/javascript">
							$('.main-search').hide();
							$('button').click(function() {
								$('.main-search').show();
								$('.main-search text').focus();
							});
							$('.close').click(function() {
								$('.main-search').hide();
							});
						</script>
						<!--/profile_details-->
						<div class="profile_details_left">
							<ul class="nofitications-dropdown">
								

								<li class="dropdown note">
									<a href="Logout"  style="color: #000"> <img style="width:40px;height:auto" alt="" src="images/exit.png"> </a>
								</li>
								
								<div class="clearfix"></div>
							</ul>
						</div>
						<div class="clearfix"></div>
						<!--//profile_details-->
					</div>
					<!--//menu-right-->
					<div class="clearfix"></div>
				</div>
				<!-- //header-ends -->
				<!--outter-wp-->
				<div class="outter-wp">
					<!--sub-heard-part-->
					<div class="sub-heard-part">
						<ol class="breadcrumb m-b-0">
							<li><a href="404.html">主页</a></li>
							<li class="active">管理员用户管理</li>
						</ol>
					</div>
					
					<div id="dialog" style="display:none" title="基本的对话框">
 						<form  method="post" class="elegant-aero">
					    
					    <b>在相应的位置填入用户详细信息</b>
					    <label>
					    <span>账户 </span>
					    <input id="username" type="text" name="username" />
					    </label>
					
					    <label>
					    <span>原密码 </span>
					    <input id="pwd" type="password"  name="pwd"  />
					    </label>
					
					    <label>
					    <span>新密码</span>
					    <input id="pwd1" type="password"  name="pwd1"  />
					    </label>
					    <label>
					    <span>确认密码</span>
					    <input id="pwd2" onkeyup="validate()" type="password" name="pwd2"  />
					    </label>
					    <label>
					    <div style="text-align:center; vertical-align:middel;">
					    <input type="button" id="changepwd" align="center" class="button" value="修改" />
					    </div>
					    
					    </label>
					    <label>
					    <p id="tishi"></p>
					    </label>
					    </form>
					</div>
					
					
					<!--//sub-heard-part-->
					<div class="graph-visual tables-main">
					
						<h3 class="inner-tittle two">顾客信息表</h3>
						<div class="graph">
							<div class="tables">

								<table class="table table-hover">
									<thead>
										<tr>
											<th>账户名</th>
											<th>密码</th>
											<th>操作</th>
											
										</tr>
									</thead>
									<tbody>
									<%for(Manager mana:managers){ int i = 0;%>
										<tr>
											<td scope="row"><%=mana.getUsername() %></td>
											<td>**************</td>
											<td>												
												<a id="change"  href="javascript:void(0)" onclick="change('<%=mana.getUsername() %>')" 
												style="color: black"><img style="width:auto;height:35%" alt="" src="images/change.png"></a>
												
											</td>
										</tr>
									<%} %>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!--//graph-visual-->
				</div>
				<!--//outer-wp-->
				<!--footer section start-->
				
				
				
				<footer>
					<p>
						Copyright &copy; 2018.Company name All rights reserved.More
						Templates <a href="#" target="_blank"
							title="模板之家">汽车租赁系统</a> - Collect from <a
							href="http://www.cssmoban.com/" title="网页模板" target="_blank">汽车租赁系统</a>
					</p>
				</footer>
				<!--footer section end-->
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<div class="sidebar-menu">
			<header class="logo">
				<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
				</a> <a href="404.html"> <span id="logo">
						<h1>导航栏</h1>
				</span> <!--<img id="logo" src="" alt="Logo"/>-->
				</a>
			</header>
			<div style="border-top: 1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
			<div class="down">
				<a href="managers.jsp"><img src="images/admin.jpg"></a> <a
					href="managers.jsp"><span class=" name-caret">管理员</span></a>
				<p>System Administrator in Company</p>
				
			</div>
			<!--//down-->
			<div class="menu">
				<ul id="menu">
					<li><a href="index.jsp"><i class="fa fa-tachometer"></i>
							<span>主页</span></a></li>
					<li id="menu-academico"><a href="cars.jsp"><i class="fa fa-table"></i>
							<span> 汽车管理</span> </span></a>
						</li>
					<li id="menu-academico"><a href="#"><i
							class="fa fa-file-text-o"></i> <span>用户管理</span> </span></a>
						</li>
					<li><a href="discount.jsp"><i class="lnr lnr-pencil"></i>
							<span>优惠政策</span></a></li>
					<li id="menu-academico"><a href="orders.jsp"><i
							class="lnr lnr-book"></i> <span>订单管理</span> </a>
						</li>
					<li><a href="managers.jsp">
					<i class="lnr lnr-envelope"></i> <span>管理员用户管理
								</a>
						</li>
					<li id="menu-academico"><a href="logs.jsp"><i
							class="lnr lnr-layers"></i> <span>系统日志</span> </a>
						</li>
				</ul>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
			function() {
				if (toggle) {
					$(".page-container").addClass("sidebar-collapsed")
							.removeClass("sidebar-collapsed-back");
					$("#menu span").css({
						"position" : "absolute"
					});
				} else {
					$(".page-container").removeClass("sidebar-collapsed")
							.addClass("sidebar-collapsed-back");
					setTimeout(function() {
						$("#menu span").css({
							"position" : "relative"
						});
					}, 400);
				}
	
				toggle = !toggle;
		});
		$(document).ready(function(){
			$("#changepwd").click(function(){ 
				
			    $.ajax({
			        url : "${pageContext.request.contextPath}/Changepwd", //后台查询验证的方法
			        dataTpye : "json",
			        data : {
			            "username" : $('#username').val(),
			            "pwd" : $('#pwd').val(),
			            "pwd1" : $('#pwd1').val()
			        }, 
			        type : "post",
			        success : function(msg) {
			            //根据后台返回前台的msg给提示信息加HTML
			            
			            if ("true" == msg) {
			            	alert("密码修改成功");
			            	$( "#dialog" ).hide();
			            	
			            } else {
			                // 账号不存在
			                //alert("登录失败，请检查用户名密码后重试");
			                document.getElementById("tishi").innerHTML="<font size='2' color='red'>原账户名密码错误</font>";
			            	
			            }
			        },
			        error:function(){  //请求失败的回调方法
			        	alert("登录失败，请重试");
			        }
			    });
				});
			});
	</script>
	<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script>

    function change(username) {
    	document.getElementById('username').value = username;
    	document.getElementById('pwd').value = "";
    	document.getElementById('pwd1').value = "";
    	document.getElementById('pwd2').value = "";
    	document.getElementById("tishi").innerHTML = "";
    	$( "#dialog" ).dialog({
    		width:500,
    		height:350,
    		title:"修改密码",
    		hide:"slide"
    	});
    }
    function deluser(id){
    	
    }
    function cancel(){
    	 document.getElementById('all_light').style.display = 'none';
         document.getElementById('contes').style.display = 'none';

    }
	</script>
	<script>
	$(function() {
	    $( "#dialog" ).hide();
	});
		
		function validate() {
			var pwd1 = document.getElementById("pwd1").value;
			var pwd2 = document.getElementById("pwd2").value;
			if (pwd1 == pwd2) {
				document.getElementById("tishi").innerHTML = "<font size='2' color='green'>验证通过</font>";
			} else {
				document.getElementById("tishi").innerHTML = "<font size='2' color='red'>两次密码不相同</font>";
			}
		}
	</script>
</body>
</html>