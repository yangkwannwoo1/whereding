// 지역선택 클릭시
    $(".address .select_area").click(function(){
      $(".md2").css("display", "none");
      $(".md1").css("display", "block");
    })
  // 태그찾기 클릭시
    $(".find_tag button").click(function(){
      nextStr = $(this).closest("table").parent().next().find(".hidden_tab_area").val(); // studio

      
      // console.log($(this).closest("table").find("thead .hidden_tab_area").val())
      // location.href="tagList.mn?category=" + $(this).closest("table").find("thead .hidden_tab_area").val();
      $.ajax({
        url:"tagList.mn",
        data:{
          category:$(this).closest("table").find("thead .hidden_tab_area").val()
        },success:function(list){
          // console.log(data);
          let alldata = [];
          for(let i in list){
            for(let j in list[i].tagContent.split(', ')){
              alldata.push(list[i].tagContent.split(', ')[j])
            }
            // console.log(alldata)
          }
          let distinctData = alldata.filter(function(el, id){
            return alldata.indexOf(el) === id
          })
          // console.log(distinctData)
          let value = "";
          for(let i in distinctData ){
            value += '<button class="btn btn-outline-secondary"># ' + distinctData[i] + '</button>'
          }
          $(".allTag_area").html(value);
        },error:function(){
          console.log("태그불러오기 ajax 요청 실패!")
        }
      })
      $(".md1").css("display", "none");
      $(".md2").css("display", "block");
    })
  $('.ltablinks').on('click',function(){
    $('.selectCity').attr('class','selectCity');
  })
function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
  
    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
  
    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(cityName).style.display = "block";

    evt.currentTarget.className += " active";
  }
  document.getElementById("defaultOpen").click();

// 도시 선택
function clickCity(event){
  var i, selectCity, cancelCity;
  if(event.currentTarget.className == "selectCity active"){
    cancelCity = document.getElementsByClassName("selectCity active");
    event.currentTarget.className ="selectCity";
  }else{
    selectCity = document.getElementsByClassName("selectCity");
    event.currentTarget.className +=" active";
    
  }
}
// function selectCity(){
//   $(".ltab .active").attr("class","selectCity")
  
// }
// 도시선택완료
function submitCity(){
  let addressArr = [];
  let address;
  let sido = $(".ltab .active").text();
  let sigu = [];
  let str = "";
  // console.log(sido);
  
  // console.log($(".ltab .active").attr("class").substring(10,15)) seoul
  let arr = $(".ltabcontent .active").toArray();
  $.each(arr, function(id, val){
    // console.log($(val).text());
    address = sido + " " + $(val).text(); // 서울특별시 강남구
    sigu.push($(val).text());
    str = sigu.join(', ');
    // console.log(address);
    addressArr.push(address);
  })
  console.log(addressArr);
  // console.log(str);
  let category = $(".nav-tabs .active").attr("aria-controls");
  $(".md").css("display","none");
  $("#"+category+" .select_area").val(str);
  $("#"+category+" .hidden_address").val(addressArr);
  console.log("히든 도시");
  console.log($("#"+category+" .hidden_address").val());
}
// 태그선택완료
function submitTag(){
  let tagArr = [];
  let strHtml = "";

  let arr = $(".allTag_area .active").toArray();
  $.each(arr, function(id, val){
    tagArr.push($(val).text().substr(2));
  })
  let category = $(".nav-tabs .active").attr("aria-controls");
  $(".md2").css("display","none");
  $("#" + category + " .hidden_tag").val(tagArr);
  console.log("히든태그");
  console.log($(".hidden_tag").val())
  for(let i = 0; i<tagArr.length; i++){
    strHtml += "<span class='taglist'># " + tagArr[i] + "</span>";
  }
  $("#" + category + " .selectTagArea").html(strHtml)
  // console.log($(".hidden_tag").val());

}
  $("#tab_top_area #nav-tab > .nav-link").click(function(){
    //console.log("메뉴클릭")
    $(".ltabcontent button").attr("class","selectCity");
    $(".allTag_area button").attr("class","btn btn-outline-secondary");
})


// $(function(){
  // $(".chk_nm input").keydown(function(data) {
  //   return data.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  //   });
  
//   //input 숫자 체크
//   $(".chk_nm").keydown(function(e){
//     // console.log($(this).children().val())
//     if(e.key === "Backspace" || e.key === "Delete" || (e.key >= "0" && e.key <= "9")){
//       return true;
//     }
//     return false;
// })
  // 태그버튼 클릭시
  // $(function(){
  //   $(".allTag_area button").on('click',function(){
  //     $(this).attr('class', 'btn btn-outline-secondary active');
  //   })
  // })
  $(document).on("click",".allTag_area button",function(){  
     $(this).attr('class','btn btn-outline-secondary active')
  })
  $(document).on("click",".allTag_area .active",function(){  
     $(this).attr('class','btn btn-outline-secondary')
  })
  $(document).on("click",".taglist",function(){  
    $(this).remove()
    console.log($(this))
  })

// 좌측탭
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("ltabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("ltablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";

  // 모달 닫기
  $(".close_tab").click(function(){
    submitCity();
    submitTag();
    $(".md").css("display","none");
  })
}

// 다음 버튼
function nextTab(e){
  nextStr = $(e).closest("table").parent().next().find(".hidden_tab_area").val(); // studio
  console.log(e)  
  // console.log($(e).closest("table").closest("table").find("#tab_top_area").find("#nav-" + nextStr + "-tab"))
  $(e).closest("table").parent().closest("table").find("#tab_top_area").find("#nav-" + nextStr + "-tab").click();//.attr("class","nav-link active");
  //console.log($(".hidden_tag").val())
  // $(e).closest("table").parent().attr("class","tab-pane fade");
  // $(e).closest("table").parent().next().attr("class","tab-pane fade active show");
  // class="tab-pane fade active show"
  // class="tab-pane fade"
}

// 이전 버튼
function prevTab(e){
  prevStr = $(e).closest("table").parent().next().find("h3").text().toLowerCase(); // studio
  // console.log($(e).closest("table").closest("table").find("#tab_top_area").find("#nav-" + nextStr + "-tab"))
  $(e).closest("table").parent().closest("table").find("#tab_top_area").find(".active").prev().click();

  // $(e).closest("table").parent().attr("class","tab-pane fade");
  // $(e).closest("table").parent().next().attr("class","tab-pane fade active show");
  // class="tab-pane fade active show"
  // class="tab-pane fade"
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
