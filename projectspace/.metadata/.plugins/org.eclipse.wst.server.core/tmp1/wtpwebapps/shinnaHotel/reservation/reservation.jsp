<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
Date today = new Date();
SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
String now = simpledateformat.format(today);

Calendar cal = Calendar.getInstance();
String format = "yyyy-mm-dd";
cal.add(cal.DATE, +1);
String tomorrow = simpledateformat.format(cal.getTime());
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Shinna Hotel</title>

    <!-- Favicon -->
    <link rel="icon" href="../image/headicon.png">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="../header.css">
</head>


<body>
     <%@ include file="/header_footer/header.jsp" %>

    <!-- Breadcrumb Area Start -->
    <div class="breadcrumb-area bg-img bg-overlay jarallax" style="background-image: url(img/bg-img/16.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h2 class="page-title">예약</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb justify-content-center">
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">예약</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Area End -->
    <!-- About Us Area Start -->
        <!-- Hotel Search Form Area -->
        <div class="hotel-search-form-area">
            <div class="container-fluid">
                <div class="hotel-search-form">
                    <form action="${pageContext.request.contextPath }/reservation/RoomSearch.re" method="post" name="searchForm">
                        <p>날짜, 인원 선택</p>
                        <div class="row justify-content-between align-items-end">
                            <div class="col-6 col-md-2 col-lg-3">
                                <label for="checkIn">체크인</label>
                                <input type="date" class="form-control" id="checkIn" name="checkin-date" min='<%=now%>'>
                            </div>
                            <div class="col-6 col-md-2 col-lg-3">
                                <label for="checkOut">체크아웃</label>
                                <input type="date" class="form-control" id="checkOut" name="checkout-date" min='<%=tomorrow %>'>
                            </div>
                            <div class="col-4 col-md-1">
                                <label for="room">객실</label>
                                <select name="room" id="room" class="form-control">
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                </select>
                            </div>
                            <div class="col-4 col-md-1">
                                <label for="adults">성인</label>
                                <select name="adults" id="adults" class="form-control">
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                </select>
                            </div>
                            <div class="col-4 col-md-2 col-lg-1">
                                <label for="children">어린이</label>
                                <select name="children" id="children" class="form-control">
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                </select>
                            </div>
                            <div class="col-12 col-md-3">
                                <button href="javascript:document.searchForm.submit();" type="submit" class="form-control btn roberto-btn w-100" style="background-color: #f1e3c4;color: #524b42;">검색</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <!-- Rooms Area Start -->
    <div class="roberto-rooms-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-12">
                	
                          
                    <!-- Single Room Area -->
                    <div class="single-room-area d-flex align-items-center mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Room Thumbnail -->
                        <div class="room-thumbnail">
                            <img src="../image/스탠다드1.jpg" alt="">
                        </div>
                        <!-- Room Content -->
                        <div class="room-content" style="width:300px;">
                            <h2>스탠다드</h2>
                            <h4>100,000 원 <span>/ 1박</span></h4>
                            <div class="room-feature">
                                <h6>Size: <span>21.7m</span></h6>
                                <h6>객실 수: <span>212객실</span></h6>
                                <h6>Bed: <span>더블, 트윈</span></h6>
                                <h6>전망: <span>시티 뷰</span></h6>
                            </div>
                            <a href="#" class="btn view-detail-btn">View Details <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                        </div>
                        
                        <div class="room-content">
                            <form action="#" method="post">
                                
                                <div class="form-group" style="text-align:right;">
                                    <button type="submit" class="btn roberto-btn w-100">예약</button>
                                </div>
                            </form>
                        </div>  
                        
                    </div>

                    <!-- Single Room Area -->
                    <div class="single-room-area d-flex align-items-center mb-50 wow fadeInUp" data-wow-delay="300ms">
                        <!-- Room Thumbnail -->
                        <div class="room-thumbnail">
                            <img src="../image/디럭스1.jpg" alt="">
                        </div>
                        <!-- Room Content -->
                        <div class="room-content" style="width:300px;">
                            <h2>디럭스</h2>
                            <h4>200,000 원 <span>/ 1박</span></h4>
                            <div class="room-feature">
                                <h6>Size: <span>21.7m</span></h6>
                                <h6>객실 수: <span>150객실</span></h6>
                                <h6>Bed: <span>더블</span></h6>
                                <h6>전망: <span>시티 뷰</span></h6>
                            </div>
                            <a href="#" class="btn view-detail-btn">View Details <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                        </div>
                        <div class="room-content">
                            <form action="#" method="post">
                                <div class="form-group">
                                    <button type="submit" class="btn roberto-btn w-100">예약</button>
                                </div>
                            </form>
                        </div>  
                    </div>

                    <!-- Single Room Area -->
                    <div class="single-room-area d-flex align-items-center mb-50 wow fadeInUp" data-wow-delay="500ms">
                        <!-- Room Thumbnail -->
                        <div class="room-thumbnail">
                            <img src="../image/객실123.jpg" alt="">
                        </div>
                        <!-- Room Content -->
                        <div class="room-content" style="width:300px;">
                            <h2>프리미어 디럭스</h2>
                            <h4>300,000 원  <span>/ 1박</span></h4>
                            <div class="room-feature">
                                <h6>Size: <span>21.7m</span></h6>
                                <h6>객실 수: <span>16객실</span></h6>
                                <h6>Bed: <span>더블</span></h6>
                                <h6>전망: <span>시티 뷰</span></h6>
                            </div>
                            <a href="#" class="btn view-detail-btn">View Details <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                        </div>
                        <div class="room-content">
                            <form action="#" method="post">
                                
                                <div class="form-group">
                                    <button type="submit" class="btn roberto-btn w-100">예약</button>
                                </div>
                            </form>
                        </div>  
                    </div>

                    <!-- Single Room Area -->
                    <div class="single-room-area d-flex align-items-center mb-50 wow fadeInUp" data-wow-delay="700ms">
                        <!-- Room Thumbnail -->
                        <div class="room-thumbnail">
                            <img src="../image/그랜드1.jpg" alt="">
                        </div>
                        <!-- Room Content -->
                        <div class="room-content" style="width:300px;">
                            <h2>그랜드</h2>
                            <h4>400,000 원 <span>/ 1박</span></h4>
                            <div class="room-feature">
                                <h6>Size: <span>50m</span></h6>
                                <h6>객실 수: <span>4객실</span></h6>
                                <h6>Bed: <span>더블</span></h6>
                                <h6>전망: <span>시티 뷰</span></h6>
                            </div>
                            <a href="#" class="btn view-detail-btn">View Details <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                        </div>
                        <div class="room-content">
                            <form action="#" method="post">
                               
                                <div class="form-group">
                                    <button type="submit" class="btn roberto-btn w-100">예약</button>
                                </div>
                            </form>
                        </div>  
                    </div>

                    

                    <!-- Pagination -->
                    <nav class="roberto-pagination wow fadeInUp mb-100" data-wow-delay="1000ms">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next <i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </nav>
                </div>

                <div class="col-12 col-lg-4">
                    <!-- Hotel Reservation Area -->
                    
                </div>
            </div>
        </div>
    </div>
    <!-- Rooms Area End -->

        

    <!-- Partner Area Start -->
    <div class="partner-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="partner-logo-content d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="300ms">
                        <!-- Single Partner Logo -->
                        <a href="#" class="partner-logo"><img src="img/core-img/p1.png" alt=""></a>
                        <!-- Single Partner Logo -->
                        <a href="#" class="partner-logo"><img src="img/core-img/p2.png" alt=""></a>
                        <!-- Single Partner Logo -->
                        <a href="#" class="partner-logo"><img src="img/core-img/p3.png" alt=""></a>
                        <!-- Single Partner Logo -->
                        <a href="#" class="partner-logo"><img src="img/core-img/p4.png" alt=""></a>
                        <!-- Single Partner Logo -->
                        <a href="#" class="partner-logo"><img src="img/core-img/p5.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Partner Area End -->

 <%@ include file="/header_footer/footer.jsp" %>
 
    <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="../js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="../js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="../js/bootstrap.min.js"></script>
    <!-- All Plugins -->
    <script src="../js/roberto.bundle.js"></script>
    <!-- Active -->
    <script src="../js/default-assets/active.js"></script>

</body>

</html>