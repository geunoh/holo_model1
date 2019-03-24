<%@page import="java.util.List"%>
<%@page import="org.yolo.holo.dao.LocationsDAO"%>
<%@page import="org.yolo.holo.vo.Location"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%
   		List<Location> location1 = LocationsDAO.selectRegion1();
   		List<Location> location2 = LocationsDAO.selectRegion2();
   		List<Location> location3 = LocationsDAO.selectRegion3();
   		List<Location> location4 = LocationsDAO.selectRegion4();
   		List<Location> location5 = LocationsDAO.selectRegion5();
    %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>여행지</title>
  <%@ include file="/WEB-INF/template/link.jsp" %>
    <style>
        body{
            font: 16px "Kakao", "sans-serif";
        }

		a {
			text-decoration:none;
		}
        #contentsWrap{
            width: 1080px;
            margin: auto;
            margin-top: 90px;
        }

        .btn {
            width: 50px;
            height: 220px;
            position: absolute;
            top: 30px;
            display: none;
        }

        .btn button:active {
            font-size: 20px;
            transition: .2s ease;
        }

        .leftBtn {
            left: 0;
        }

        .rightBtn {
            right: -15px;
        }

        .btn button {
            border: none;
            outline: none;
            background-color: transparent;
            font-size: 30px;
            line-height: 225px;
            text-align: center;
            cursor: pointer;
        }

        #region1 {
            position: relative;

            width: 1080px;
            height: auto;
            /*background-color: blue;*/
        }

        #region2 {
            position: relative;
            width: 1080px;
            height: auto;
            /*background-color: red;*/
            margin-top: 60px;
        }

        #region3 {
            position: relative;
            width: 1080px;
            height: auto;
            margin-top: 60px;
            /*background-color: blue;*/
        }

        #region4 {
            position: relative;

            width: 1080px;
            height: auto;
            margin-top: 60px;
            /*background-color: blue;*/
        }

        #region5 {
            position: relative;

            width: 1080px;
            height: auto;
            margin-top: 60px;
            margin-bottom: 60px;
            /*background-color: blue;*/
        }
        .regionName {
            position: relative;
            width: 200px; height: 30px;
            margin: 10px 0 10px 50px;
            font: 25px "Kakao", "sans-serif";
            transition:1s;
            font-weight:bold;
            float:left;
        }
        
        .regionName span {
        	float:left;
        	height:30px;
        	line-height:30px;
        	margin-left:5px;
        }
        
        .regionName img {
        	float:left;
        }

        .locationAll {
            height: 200px;
            position: absolute;
            left: 0;

            /*background-color: #FFC107;*/
        }

        .location {

            position: relative;
            margin: 20px auto;
            overflow: hidden;

            width: 1010px;
            height: 200px;

            /*background-color: #00AAB4;*/

        }

        .locationImg {
            width: 240px;
            height: 200px;
            position: relative;
        }

        .locationImg img{
            width: 240px;
            height: 200px;
        }

        .cover {
            width:240px;
            height:200px;
            position:absolute;
            text-align: center;
            top:0;
            left:0;
            background: rgba(0, 0, 0, 0.3);
            text-decoration:none;
            line-height : 200px;
            transition: 2s ease;
            color : #fff;
            font-size : 30px;
        }

        .cover a {
            color: white;
            font-weight: bold;
            font-size: 28px;
            line-height: 180px;
        }

        .locationOne:hover .cover{
            background: rgba(0, 0, 0, 0.7);
            display: block;
            cursor: pointer;
        }


        .locationOne{
            position: relative;
            width: 240px;
            height: 200px;

            float: left;

            margin: 5px;

            border: 1px solid #9E9E9E;
            border-radius: 5px;
            /*box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/

        }

        .locationOne>img {
            position: absolute;
            width: 40px;
            height: 40px;

            right: 5px;
            bottom: 8px;
        }


        .cover span {

            display: block;
            font-size: 30px;
            color: white;
            text-align: center;
            line-height: 200px;
            text-decoration: none;

        }

        .cover span:hover {
            color: white;
            text-shadow: 1px 1px 1px #424242;

        }

        .locationOne .star {
            cursor: pointer;

            position: absolute;

            width: 30px;
            height: 20px;

            right: 2px;
            top: 0;
        }

        .star>img {
            width: 30px;
            height: 30px;
        }



    </style>
</head>
<body>
<%@ include file="/WEB-INF/template/header.jsp" %>

<div id="contentsWrap">
    <div id="wraps">

        <div id="region1">
            <div class="btn leftBtn"><button><i class="fas fa-chevron-left"></i></button></div>
            <div class="btn rightBtn"><button><i class="fas fa-chevron-right"></i></button></div>

            <div class="regionName"><img src="/img/korea.png" width="30" height="30"><span>대한민국</span></div>
            <div class="location">
                <ul class="locationAll">
                <% for(Location location:location1){ %>
                    <li class="locationOne">
                    <a href="/location.jsp?no=<%=location.getNo() %>">
                        <div class="locationImg"><img src="/location/<%=location.getImg() %>"></div>
                        <div class="cover"><%=location.getName() %></div></a>
                        <div class="star"><img src="img/star.png" width="30" height="30"></div>
                    </li><!--locationOne -->
                    <%} %>
                </ul>
            </div><!--loction -->
        </div><!--region1 -->

        <div id="region2">
            <div class="btn leftBtn"><button><i class="fas fa-chevron-left"></i></button></div>
            <div class="btn rightBtn"><button><i class="fas fa-chevron-right"></i></button></div>
            <div class="regionName"><img src="img/asia.png" width="30" height="30"><span>동북아시아</span></div>
            <div class="location">
               <ul class="locationAll">
                <% for(Location location:location2){ %>
                    <li class="locationOne">
                    <a href="/location.jsp?no=<%=location.getNo() %>">
                        <div class="locationImg"><img src="/location/<%=location.getImg() %>"></div>
                        <div class="cover"><%=location.getName() %></div></a>
                        <div class="star"><img src="img/star.png" width="30" height="30"></div>
                    </li><!--locationOne -->
                    <%} %>
                </ul>
            </div><!--loction -->
        </div><!--region2 -->

        <div id="region3">
            <div class="btn leftBtn"><button><i class="fas fa-chevron-left"></i></button></div>
            <div class="btn rightBtn"><button><i class="fas fa-chevron-right"></i></button></div>
            <div class="regionName"><img src="img/southAsia.png" width="30" height="30"><span>동남아시아</span></div>
            <div class="location">
                <ul class="locationAll">
                <% for(Location location:location3){ %>
                    <li class="locationOne">
                    <a href="/location.jsp?no=<%=location.getNo() %>">
                        <div class="locationImg"><img src="/location/<%=location.getImg() %>"></div>
                        <div class="cover"><%=location.getName() %></div></a>
                        <div class="star"><img src="img/star.png" width="30" height="30"></div>
                    </li><!--locationOne -->
                    <%} %>
                </ul>
            </div><!--loction -->
        </div><!--region3 -->

        <div id="region4">
            <div class="btn leftBtn"><button><i class="fas fa-chevron-left"></i></button></div>
            <div class="btn rightBtn"><button><i class="fas fa-chevron-right"></i></button></div>
            <div class="regionName"><img src="/img/europe.png" width="30" height="30"><span>유럽</span></div>
            <div class="location">
                <ul class="locationAll">
                <% for(Location location:location4){ %>
                    <li class="locationOne">
                    <a href="/location.jsp?no=<%=location.getNo() %>">
                        <div class="locationImg"><img src="/location/<%=location.getImg() %>"></div>
                        <div class="cover"><%=location.getName() %></div></a>
                        <div class="star"><img src="img/star.png" width="30" height="30"></div>
                    </li><!--locationOne -->
                    <%} %>
                </ul>
            </div><!--loction -->
        </div><!--region4 -->

        <div id="region5">
            <div class="btn leftBtn"><button><i class="fas fa-chevron-left"></i></button></div>
            <div class="btn rightBtn"><button><i class="fas fa-chevron-right"></i></button></div>
            <div class="regionName"><img src="/img/america.png" width="30" height="30"><span>아메리카</span></div>
            <div class="location">
                <ul class="locationAll">
                <% for(Location location:location5){ %>
                    <li class="locationOne">
                    <a href="/location.jsp?no=<%=location.getNo() %>">
                        <div class="locationImg"><img src="/location/<%=location.getImg() %>"></div>
                        <div class="cover"><%=location.getName() %></div></a>
                        <div class="star"><img src="img/star.png" width="30" height="30"></div>
                    </li><!--locationOne -->
                    <%} %>
                </ul>
            </div><!--loction -->
        </div><!--region5 -->


    </div><!--//wraps-->
</div><!--//contents-->

<%@ include file="/WEB-INF/template/footer.jsp" %>
<%@ include file="/WEB-INF/template/popLogin.jsp" %>
<script src="js/jquery.js"></script>
<script>

    $('.star>img').on("click",function () {
        var starFlag = $(this).attr("src");
        /*alert(starFlag);*/

        if(starFlag=="img/star.png"){
            $(this).attr("src","img/emptyStar.png");
        }else {
            $(this).attr("src", "img/star.png");
        }
    });


    var px =0;

    $('.leftBtn').click(function () {
        px -= 252;
        console.log(px);

        if(px == -2268) {
            px = 0;
        }

        $(this).parent().find('.locationOne').css("left", px);
    });

    $('.rightBtn').click(function () {
        px += 252;

        console.log(px);

        if(px == +252) {
            px = -2016;
        }

        $(this).parent().find('.locationOne').css("left", px);
    });


</script>
<script src="js/login.js"></script>
<script src="js/dounorPop.js"></script>
</body>
</html>