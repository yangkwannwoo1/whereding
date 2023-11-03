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
            $(".time_body>button").click(function() {
                $(".time_body>button").removeClass("select");
                $(this).addClass("select");
                console.log($(this).text());
            });
            
            $("#submit_message").click(()=>{
                var originalText = $(".head-month").text();
                var parts = originalText.split(" - ");
        
                $("#year").val(parts[1])
                console.log($("#year").val())
        
                $("#month").val(parts[0])
                console.log($("#month").val())
        
                $("#day").val($(".head-day").text());
                console.log($("#day").val())
        
                $("#time").val($(".select").text())
                console.log($("#time").val())
        
                $("#message").val($("#message").val())
                console.log($("#message").val())
        
                if($("#time").val() == ""){
                    alert("시간을 선택해주세요");
                }else{
                    $("#form").submit()
        
                }
        
            })

      </script>


</body>
</html>