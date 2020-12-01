<!DOCTYPE html>
<%@page import="com.model.Table"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="com.model.Detail"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.process.ConnectionDao"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Fees Payment System</title><link rel = "icon" href =  
        "title icon.png" 
                type = "image/x-icon">
	<link rel="stylesheet" href="css/landing.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".profile .icon_wrap").click(function(){
			  $(this).parent().toggleClass("active");
			  $(".notifications").removeClass("active");
			});

			$(".notifications .icon_wrap").click(function(){
			  $(this).parent().toggleClass("active");
			   $(".profile").removeClass("active");
			});

			$(".show_all .link").click(function(){
			  $(".notifications").removeClass("active");
			  $(".popup").show();
			});

			$(".close").click(function(){
			  $(".popup").hide();
			});
		});
    </script>
    <!-- The core Firebase JS SDK is always required and must be listed first -->
    <script src="/__/firebase/7.24.0/firebase-app.js"></script>
    
    <!-- TODO: Add SDKs for Firebase products that you want to use
         https://firebase.google.com/docs/web/setup#available-libraries -->
    <script src="/__/firebase/7.24.0/firebase-analytics.js"></script>
    
    <!-- Initialize Firebase -->
    <script src="/__/firebase/init.js"></script>
</head>

<%
List list=new ArrayList();
Session session1;
HttpSession hs= request.getSession(false);
Configuration configuration=ConnectionDao.getConnnConnectionDao();
configuration.configure("hibernate.cfg.xml");
 session1=configuration.buildSessionFactory().openSession();
 Transaction transaction=session1.beginTransaction();
   Criteria c=session1.createCriteria(Detail.class);
 
   
    List l=c.list();
   
     Iterator<Detail> i=l.iterator();
   while (i.hasNext()) {
	  
    Detail s=i.next();
   if(hs.getAttribute("name").toString().equals(s.getName())){
  
   %>
<body>

<div>
    <div class="wrapper">
        <div class="navbar">
            <div class="navbar_left">
                <div class="logo">
                    <a href="#">
                        <img alt="cmrit" src="cmrit_logo.png" width="80" height="60"></a>
                </div>
            </div>
    
            <div class="navbar_right">
                <div class="notifications">
                    <div class="icon_wrap"><i class="far fa-bell"></i></div>
    
                    <div class="notification_dd">
                        <ul class="notification_ul">
                            <li class="starbucks success">
                                <div class="notify_icon">
                                    <span class="icon"></span>
                                </div>
                                <div class="notify_data">
                                    <div class="title">
                                        Lorem, ipsum dolor.
                                    </div>
                                    <div class="sub_title">
                                        Lorem ipsum dolor sit amet consectetur.
                                    </div>
                                </div>
                                <div class="notify_status">
                                    <p>Success</p>
                                </div>
                            </li>
                            <li class="baskin_robbins failed">
                                <div class="notify_icon">
                                    <span class="icon"></span>
                                </div>
                                <div class="notify_data">
                                    <div class="title">
                                        Lorem, ipsum dolor.
                                    </div>
                                    <div class="sub_title">
                                        Lorem ipsum dolor sit amet consectetur.
                                    </div>
                                </div>
                                <div class="notify_status">
                                    <p>Failed</p>
                                </div>
                            </li>
                            <li class="mcd success">
                                <div class="notify_icon">
                                    <span class="icon"></span>
                                </div>
                                <div class="notify_data">
                                    <div class="title">
                                        Lorem, ipsum dolor.
                                    </div>
                                    <div class="sub_title">
                                        Lorem ipsum dolor sit amet consectetur.
                                    </div>
                                </div>
                                <div class="notify_status">
                                    <p>Success</p>
                                </div>
                            </li>
                            <li class="pizzahut failed">
                                <div class="notify_icon">
                                    <span class="icon"></span>
                                </div>
                                <div class="notify_data">
                                    <div class="title">
                                        Lorem, ipsum dolor.
                                    </div>
                                    <div class="sub_title">
                                        Lorem ipsum dolor sit amet consectetur.
                                    </div>
                                </div>
                                <div class="notify_status">
                                    <p>Failed</p>
                                </div>
                            </li>
                            <li class="kfc success">
                                <div class="notify_icon">
                                    <span class="icon"></span>
                                </div>
                                <div class="notify_data">
                                    <div class="title">
                                        Lorem, ipsum dolor.
                                    </div>
                                    <div class="sub_title">
                                        Lorem ipsum dolor sit amet consectetur.
                                    </div>
                                </div>
                                <div class="notify_status">
                                    <p>Success</p>
                                </div>
                            </li>
                            <li class="show_all">
                                <p class="link">Show All Activities</p>
                            </li>
                        </ul>
                    </div>
    <%String image=s.getImage();
    System.out.println(image);%>
                </div>
                <div class="profile">
                    <div class="icon_wrap">
                        <img src="Image.jpeg" alt="profile_pic">
                        <span class="name"><%=s.getName() %>                     </span>
                        <i class="fas fa-chevron-down"></i>
                    </div>
    
                    <div class="profile_dd">
                        <ul class="profile_ul">
                            <li class="profile_li"><a class="profile" href="#"><span class="picon"><i
                                            class="fas fa-user-alt"></i>
                                    </span>Profile</a>
                                <div class="btn">My Account</div>
                            </li>
                            <li><a class="address" href="#"><span class="picon"><i
                                            class="fas fa-map-marker"></i></span>Address</a></li>
                            <li><a class="settings" href="#"><span class="picon"><i
                                            class="fas fa-cog"></i></span>Settings</a></li>
                            <li><a class="logout" href="logout"><span class="picon"><i
                                            class="fas fa-sign-out-alt"></i></span>Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="popup">
            <div class="shadow"></div>
            <div class="inner_popup">
                <div class="notification_dd">
                    <ul class="notification_ul">
                        <li class="title">
                            <p>All Notifications</p>
                            <p class="close"><i class="fas fa-times" aria-hidden="true"></i></p>
                        </li>
                        <li class="starbucks success">
                            <div class="notify_icon">
                                <span class="icon"></span>
                            </div>
                            <div class="notify_data">
                                <div class="title">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="sub_title">
                                    Lorem ipsum dolor sit amet consectetur.
                                </div>
                            </div>
                            <div class="notify_status">
                                <p>Success</p>
                            </div>
                        </li>
                        <li class="baskin_robbins failed">
                            <div class="notify_icon">
                                <span class="icon"></span>
                            </div>
                            <div class="notify_data">
                                <div class="title">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="sub_title">
                                    Lorem ipsum dolor sit amet consectetur.
                                </div>
                            </div>
                            <div class="notify_status">
                                <p>Failed</p>
                            </div>
                        </li>
                        <li class="mcd success">
                            <div class="notify_icon">
                                <span class="icon"></span>
                            </div>
                            <div class="notify_data">
                                <div class="title">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="sub_title">
                                    Lorem ipsum dolor sit amet consectetur.
                                </div>
                            </div>
                            <div class="notify_status">
                                <p>Success</p>
                            </div>
                        </li>
                        <li class="baskin_robbins failed">
                            <div class="notify_icon">
                                <span class="icon"></span>
                            </div>
                            <div class="notify_data">
                                <div class="title">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="sub_title">
                                    Lorem ipsum dolor sit amet consectetur.
                                </div>
                            </div>
                            <div class="notify_status">
                                <p>Failed</p>
                            </div>
                        </li>
                        <li class="pizzahut failed">
                            <div class="notify_icon">
                                <span class="icon"></span>
                            </div>
                            <div class="notify_data">
                                <div class="title">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="sub_title">
                                    Lorem ipsum dolor sit amet consectetur.
                                </div>
                            </div>
                            <div class="notify_status">
                                <p>Failed</p>
                            </div>
                        </li>
                        <li class="kfc success">
                            <div class="notify_icon">
                                <span class="icon"></span>
                            </div>
                            <div class="notify_data">
                                <div class="title">
                                    Lorem, ipsum dolor.
                                </div>
                                <div class="sub_title">
                                    Lorem ipsum dolor sit amet consectetur.
                                </div>
                            </div>
                            <div class="notify_status">
                                <p>Success</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    
    </div>
    <div class="tabs">
        <div class="first">Payment & Dues</div>
        <div class="second"><a href="Admission.jsp">Admission Profile</a></div>
    </div>
    <div class="container_box1">
        <div class="first_row">
            <div class="option_bold">Payment Details</div>
            <div class="partial"><a href="https://forms.gle/TxfGMRk74e7NpBvR9" target="_blank">Request Partial Payment</a></div>
        </div>
        <div class="second_row">
            <div class="details">
                <p class="box_heading">Payment Type</p>
                <p class="option_bold"><%=s.getPayment_type() %> </p>
            </div>
            <div class="details">
                <p class="box heading">Total Pending Amount</p>
                <p class="option_bold">Rs &nbsp<%=s.getPending_amount() %> </p>
            </div>
        </div>
        <div class="third_row">
            <p class="details">Amount Breakdown</p>
            <p class="option_bold">College Fee:&nbsp&nbspRs &nbsp<%=s.getCollege_fee() %> </p>
            <p class="option_bold">Tution Fee:&nbsp&nbspRs &nbsp<%=s.getTution_fee() %> </p>
            <p class="option_bold">VTU Consortium Fee:&nbsp&nbspRs&nbsp<%=s.getConsortium_fee() %> </p>
        </div>
        <form action="invoice" method="post">
        <div class="fourth_row">
            <p>Payment Option:</p>
            <div class="radio">
                <input type="radio" name="p_option">
                <label>Paytm&nbsp&nbsp&nbsp</label>
                <input type="radio" name="p_option">
                <label>Debit/Credit Card&nbsp&nbsp&nbsp</label>
                <input type="radio" name="p_option">
                <label>Net Banking&nbsp&nbsp&nbsp</label>
                <input type="radio" name="p_option">
                <label>PayPal</label>
            </div>
        </div>
        <div class="fifth_row">
            <div class="paybox">Amount you wish to pay<br><input type="text" placeholder="  Rs" name="invoice_amt"></div>
            <div class="proceed"><input type="submit" value="Proceed To Pay" style="background-color: black; color: white; border-color: black;"></div>
        </div>
        </form>
    </div>
   

</div>

 <br><br><br><br>
    
</body>
<%
}}
session1.close();
%>
<%@include file="track.jsp" %>
</html>