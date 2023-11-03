<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        /* 예약 폼 */
        .header{
            /* border: 1px solid red; */
            /* width: 1180px; */
            height: 150px;
            margin: auto;
            margin-top: 70px;
            margin-left: 60px;
            margin-right: 60px;
            border-bottom: 2px solid #f28123;
        }
        .category{
            width: 200px;
            height: 150px;
            float: left;
        }
        .category>h2{
            font-size: 60px;
            text-align: center;
            line-height: 150px;
            font-weight: 900;
        }
        #block{
            border: 1px solid rgba(128, 128, 128, 0.493);
            width: 2px;
            height: 100px;
            margin-top: 25px;
            float: left;
        }
        .title{
            /* border: 1px solid; */
            width: 80%;
            float: left;
            padding-left: 20px;
            margin-top: 25px;
        }
        .title>h3{
            font-weight: 700;
            margin: 0;;
            padding-top: 5px;
        }
        #block2{
            border: 1px solid rgb(59, 54, 54);
            /* background-color: red; */
            width: 300px;
            height: 2px;
            float: left;
            margin-left: 20px;
        }
        .content{
            width: 80%;
            float: left;
            padding-left: 20px;
            padding-top: 5px;
        }
        .content>h4{
            font-size: 20px;
        }
        .time{
            width: 610px;
            height: 400px;
            border: 2px solid #f28123;
            float: left;
            margin-top: 30px;
            padding: 10px;
            margin-left: 20px;
        }
        .time_body>button{
            width: 110px;
            height: 45px;
            margin: 2px;
            background-color: white;
            font-weight: 400;
            border: 2px solid rgba(128, 128, 128, 0.322);
        }
        .time_body>button.select {
            background-color: #f28123;
            border: 2px solid #723d11;
            color: white;
            font-weight: 900;
        }
        .time_body>button:hover{
            background-color: #fdbf8d;
            color: white;
            border: 0;
        }
        .message{
            width: 550px;
            height: 400px;
            border: 2px solid #f28123;
            float: left;
            margin-top: 30px;
            margin-left: 30px;
            padding: 20px;
            padding-top: 10px;
            color: black;
            font-weight: 600;
        }
        .message textarea{
            resize: none;
        }
        #submit_message{
            width: 508px;
            height: 60px;
            margin-top: 10px;
            background-color: #f28123;
            color: white;
            font-weight: 900;
            font-size: 30px;
            border: 1px solid #723d11;
        }
    </style>
</head>
<body>
    <link rel="stylesheet" href="resources/css/assets/css/style.css">
    <script src="resources/css/assets/js/consulting.js"></script>

	<section class="ftco-section">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="elegant-calencar d-md-flex">
						<div class="wrap-header d-flex align-items-center">
				      <p id="reset">reset</p>
			        <div id="header" class="p-0">
		            <div class="pre-button d-flex align-items-center justify-content-center"><i class="fa fa-chevron-left"></i></div>
		            <div class="head-info">
		                <div class="head-day"></div>
		                <div class="head-month"></div>
		            </div>
		            <div class="next-button d-flex align-items-center justify-content-center"><i class="fa fa-chevron-right"></i></div>
			        </div>
			      </div>
			      <div class="calendar-wrap">
			        <table id="calendar">
		            <thead>
		                <tr>
		                    <th>일</th>
		                    <th>월</th>
		                    <th>화</th>
		                    <th>수</th>
		                    <th>목</th>
		                    <th>금</th>
		                    <th>토</th>
		                </tr>
		            </thead>
		            <tbody>
	                <tr>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                </tr>
	                <tr>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                </tr>
	                <tr>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                </tr>
	                <tr>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                </tr>
	                <tr>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                </tr>
	                <tr>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                  <td></td>
	                </tr>
		            </tbody>
			        </table>
			      </div>
			    </div>
				</div>
			</div>
		</div>
	</section>
    

    <script>
        (function($) {

            "use strict";
        
            document.addEventListener('DOMContentLoaded', function(){
            var today = new Date(),
                year = today.getFullYear(),
                month = today.getMonth(),
                monthTag =["January","February","March","April","May","June","July","August","September","October","November","December"],
                day = today.getDate(),
                days = document.getElementsByTagName('td'),
                selectedDay,
                setDate,
                daysLen = days.length;
        // options should like '2014-01-01'
            function Calendar(selector, options) {
                this.options = options;
                this.draw();
            }
            
            Calendar.prototype.draw  = function() {
                this.getCookie('selected_day');
                this.getOptions();
                this.drawDays();
                var that = this,
                    reset = document.getElementById('reset'),
                    pre = document.getElementsByClassName('pre-button'),
                    next = document.getElementsByClassName('next-button');
                    
                    pre[0].addEventListener('click', function(){that.preMonth(); });
                    next[0].addEventListener('click', function(){that.nextMonth(); });
                    reset.addEventListener('click', function(){that.reset(); });
                while(daysLen--) {
                    days[daysLen].addEventListener('click', function(){that.clickDay(this); });
                }
            };
            
            Calendar.prototype.drawHeader = function(e) {
                var headDay = document.getElementsByClassName('head-day'),
                    headMonth = document.getElementsByClassName('head-month');
        
                    e?headDay[0].innerHTML = e : headDay[0].innerHTML = day;
                    headMonth[0].innerHTML = monthTag[month] +" - " + year;        
             };
            
            Calendar.prototype.drawDays = function() {
                var startDay = new Date(year, month, 1).getDay(),
        //      下面表示这个月总共有几天
                    nDays = new Date(year, month + 1, 0).getDate(),
            
                    n = startDay;
        //      清除原来的样式和日期
                for(var k = 0; k <42; k++) {
                    days[k].innerHTML = '';
                    days[k].id = '';
                    days[k].className = '';
                }
        
                for(var i  = 1; i <= nDays ; i++) {
                    days[n].innerHTML = i; 
                    n++;
                }
                
                for(var j = 0; j < 42; j++) {
                    if(days[j].innerHTML === ""){
                        
                        days[j].id = "disabled";
                        
                    }else if(j === day + startDay - 1){
                        if((this.options && (month === setDate.getMonth()) && (year === setDate.getFullYear())) || (!this.options && (month === today.getMonth())&&(year===today.getFullYear()))){
                            this.drawHeader(day);
                            days[j].id = "today";
                        }
                    }
                    if(selectedDay){
                        if((j === selectedDay.getDate() + startDay - 1)&&(month === selectedDay.getMonth())&&(year === selectedDay.getFullYear())){
                        days[j].className = "selected";
                        this.drawHeader(selectedDay.getDate());
                        }
                    }
                }
            };
            
            Calendar.prototype.clickDay = function(o) {
                var selected = document.getElementsByClassName("selected"),
                    len = selected.length;
                if(len !== 0){
                    selected[0].className = "";
                }
                o.className = "selected";
                selectedDay = new Date(year, month, o.innerHTML);
                this.drawHeader(o.innerHTML);
                this.setCookie('selected_day', 1);
                
            };
            
            Calendar.prototype.preMonth = function() {
                if(month < 1){ 
                    month = 11;
                    year = year - 1; 
                }else{
                    month = month - 1;
                }
                this.drawHeader(1);
                this.drawDays();
            };
            
            Calendar.prototype.nextMonth = function() {
                if(month >= 11){
                    month = 0;
                    year =  year + 1; 
                }else{
                    month = month + 1;
                }
                this.drawHeader(1);
                this.drawDays();
            };
            
            Calendar.prototype.getOptions = function() {
                if(this.options){
                    var sets = this.options.split('-');
                        setDate = new Date(sets[0], sets[1]-1, sets[2]);
                        day = setDate.getDate();
                        year = setDate.getFullYear();
                        month = setDate.getMonth();
                }
            };
            
             Calendar.prototype.reset = function() {
                 month = today.getMonth();
                 year = today.getFullYear();
                 day = today.getDate();
                 this.options = undefined;
                 this.drawDays();
             };
            
            Calendar.prototype.setCookie = function(name, expiredays){
                if(expiredays) {
                    var date = new Date();
                    date.setTime(date.getTime() + (expiredays*24*60*60*1000));
                    var expires = "; expires=" +date.toGMTString();
                }else{
                    var expires = "";
                }
                document.cookie = name + "=" + selectedDay + expires + "; path=/";
            };
            
            Calendar.prototype.getCookie = function(name) {
                if(document.cookie.length){
                    var arrCookie  = document.cookie.split(';'),
                        nameEQ = name + "=";
                    for(var i = 0, cLen = arrCookie.length; i < cLen; i++) {
                        var c = arrCookie[i];
                        while (c.charAt(0)==' ') {
                            c = c.substring(1,c.length);
                            
                        }
                        if (c.indexOf(nameEQ) === 0) {
                            selectedDay =  new Date(c.substring(nameEQ.length, c.length));
                        }
                    }
                }
            };
            var calendar = new Calendar();
            
                
        }, false);
        
        })(jQuery);
        

    </script>
    
</body>
</html>