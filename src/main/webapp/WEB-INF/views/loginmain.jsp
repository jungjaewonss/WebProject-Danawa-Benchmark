<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
<%@page import="Danawa.Project1.Dto.Member"%>
<%@page import="org.springframework.ui.Model"%>
    <%@ page import = "Danawa.Project1.Dao.UserDAO"%>
    <%@ page import = "java.io.PrintWriter"%>
    <%@ page import = "Danawa.Project1.Dao.NoteBookDAO"%>
    <%@ page import = "Danawa.Project1.Dto.NoteBookInfoBean"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
      <script src="slide.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
      <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato&family=Source+Sans+Pro&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="/resources/css/loginmain.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>


 
<body>
	
			 <%@include file="./header.jsp"%>

	
   <%   
   ArrayList<NoteBookInfoBean> notebookbean = null;
   ArrayList<NoteBookInfoBean> samsungbean = null;
   ArrayList<NoteBookInfoBean> asus = null;
   ArrayList<NoteBookInfoBean> reboba = null;
  
   if(session.getAttribute("email") != null){
   		 notebookbean = (ArrayList<NoteBookInfoBean>)session.getAttribute("notebookbean");
   		 samsungbean = (ArrayList<NoteBookInfoBean>)session.getAttribute("samsung");
   		 asus = (ArrayList<NoteBookInfoBean>)session.getAttribute("asus");
   		 reboba = (ArrayList<NoteBookInfoBean>)session.getAttribute("renoba");
   }
   
  
    if(session.getAttribute("email") == null){
	   notebookbean = (ArrayList<NoteBookInfoBean>)request.getAttribute("notebookbean");
	   samsungbean = (ArrayList<NoteBookInfoBean>)request.getAttribute("samsung");
   		 asus = (ArrayList<NoteBookInfoBean>)request.getAttribute("asus");
   		 reboba = (ArrayList<NoteBookInfoBean>)request.getAttribute("renoba");

   }
   	
   		
   	 
   %>
         
       
       
       

      
       



<div class="topslide">
  <div class="menu" > 
      <div id="horizontal-underline"></div>
     
    
      <span class="menublock">Top</span> 
   
      <span class="menublock">????????????</span>
      <span class="menublock">ASUS??????</span>
      <span class="menublock">???????????????</span>
      <span class="menublock">?????????</span>
  </div>
   
</div>
</div>

    

        
            <div class="backgroundimg">
            <div class="slidewrap" >
        
              

            <div class="slide">
               
        <div id="mainslide">  
          <a href="#">  <img src="https://blog.kakaocdn.net/dn/dBQKuU/btqByGlANgu/KkXbWkSOmuWJ2iQ6unAKCK/img.png" alt="??????????????????" style="background-color: aqua;" id="slide1" >  </a>
            <label for="button2"><i class="fas fa-angle-right" style="font-size: 60px;" id="slideright"></i></label> 
           <label for="button3"> <i class="fas fa-angle-left"  style="font-size: 60px;" id="slideleft"></i></label>
        </div>  
       
         <div class="mainslide">
         <a href="#">  <img src="https://thumb.mt.co.kr/06/2020/10/2020102215481349094_1.jpg/dims/optimize/" alt=""  style="background-color: red;" id="slide2"></a>
           <label for="button3"><i class="fas fa-angle-right" style="font-size: 60px;" id="slideright"></i></label> 
           <label for="button1"> <i class="fas fa-angle-left"  style="font-size: 60px;" id="slideleft"></i></label>
        </div> 
       
       
            <div class="mainslide"> 
         <a href="#"> <img src="https://file.mk.co.kr/meet/neds/2020/11/image_readtop_2020_1227320_16066764664450535.jpg" alt="" style="background-color: blue;" id="slide3" ></a>
          <label for="button1"><i class="fas fa-angle-right" style="font-size: 60px;" id="slideright"></i></label> 
          <label for="button2"> <i class="fas fa-angle-left"  style="font-size: 60px;" id="slideleft"></i></label>
        </div> 
        
    </div>
        </div>
    </div>


    
          <div class="button">
            <div>
                
            <input type="radio" name="button" id="button1" checked class="buttons"  >
             <input type="radio" name="button" id="button2" class="buttons" >
             <input type="radio" name="button" id="button3"  class="buttons">
        </div>
      </div>
    </div>
      


      <div class="content" id="bestcontent">
    <div class="bestwrap">
        <article class="best">
        <h3 ><i class="fas fa-crown" style="color: gold;"></i>???????????? <i class="fas fa-crown" style="color: gold;"></i></h3>
        <div class="bestadd">
        <a href="/notebook/classification?company=<%="????????????"%>" style="font-size: 10px;">????????????<i class="fas fa-plus"></i></a>
    </div>
         <div class="best1">    
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(0).getSubject()%>">
            <div id="bigimgborder1">
            <li><img src="<%=samsungbean.get(0).getImg()%>" alt="???????????????" class="bigimg"></li>
            
        </div>
        </a>
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(1).getSubject()%>">
            <li><img src=" <%=samsungbean.get(1).getImg()%>" alt="<%=notebookbean.get(4).getImg() %>" class = "smallimg"></li>
        </a>
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(2).getSubject()%>">
            <li><img src=" <%=samsungbean.get(2).getImg()%>" alt="?????????5" class = "smallimg"></li>
        </a>
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(3).getSubject()%>">
            <li><img src=" <%=samsungbean.get(3).getImg()%>" alt="?????????6" class = "smallimg"></li>
        </a>
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(4).getSubject()%>">
            <li><img src=" <%=samsungbean.get(4).getImg()%>" alt="" class = "smallimg"></li>
        </a>
       
             
    </div> 
   
    <div class="best2">  

        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(5).getSubject()%>">
            <div id="bigimgborder2">
            <li><img src=" <%=samsungbean.get(5).getImg()%>" alt="" class="bigimg"></li>
        </div>
        </a>
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(6).getSubject()%>">
            <li><img src=" <%=samsungbean.get(6).getImg()%>" alt="" class = "smallimg"></li>
        </a>
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(7).getSubject()%>">
            <li><img src=" <%=samsungbean.get(7).getImg()%>" alt="" class = "smallimg"></li>
        </a>
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(8).getSubject()%>">
            <li><img src=" <%=samsungbean.get(8).getImg()%>" alt="" class = "smallimg"></li>
        </a>
        <a href="/notebook/onenotebook?subject=<%=samsungbean.get(9).getSubject()%>">
            <li><img src=" <%=samsungbean.get(9).getImg()%>" alt="" class = "smallimg"></li>
        </a>
        
    </div> 
</div>
    </article>
</div>




  <div class="content">
    <article class="articlegoods">
        <div>
            <h3><i class="far fa-thumbs-up" ></i> ASUS?????? <i class="far fa-thumbs-up"></i></h3>
     </div>
     <div class="bestadd">
         <a href="/notebook/classification?company=<%="ASUS"%>" style="font-size: 10px;"  >????????????<i class="fas fa-plus"></i></a>
     </div>
    
     <div class="goodswrap" id="goodswrap1">
      
         
       <div class="goodsimgborder">
        
         <div class="textslide">
        <h3 class="bestgoods">????????? ??????!!</h3>
         <p class="bestgoods">LG best????????? ?????????</p>
         <p style="font-weight: bold;" class="bestgoods">?????? ????????? ?????????? ????????? ???????????????!</p>
        </div>
           <div class="slide1wrap">
           <div class="slide1">
               <div><a href="/notebook/onenotebook?subject=<%=asus.get(0).getSubject()%>">
              <img src=" <%=asus.get(0).getImg()%>" alt="asusNotebook" class="bigimgs" id="opaimg1"></a></div>
               <div><a href="/notebook/onenotebook?subject=<%=asus.get(1).getSubject()%>">
              <img src=" <%=asus.get(1).getImg() %>" alt="" class="bigimgs" id="opaimg2"></a></div>
               <div><a href="/notebook/onenotebook?subject=<%=asus.get(2).getSubject()%>">
               <img src=" <%=asus.get(2).getImg()%>" alt="" class="bigimgs" id="opaimg3"></a></div>
               
           </div>
        </div>
            
         <div class="button1">
             <input type="radio" name="button1" id="button4"  class="buttons"  checked>
             <input type="radio" name="button1" id="button5" class="buttons" >
             <input type="radio" name="button1" id="button6"  class="buttons">
            </div>
       
        </div>
     
     <div class="goods">
         
        
     
     <a href="/notebook/onenotebook?subject=<%=asus.get(3).getSubject()%>">
         <li><img src=" <%=asus.get(3).getImg()%>" alt="" class = "smallimg"></li>
     </a>
     <a href="/notebook/onenotebook?subject=<%=asus.get(4).getSubject()%>">
        <li><img src=" <%=asus.get(4).getImg()%>" alt="" class = "smallimg"></li>
    </a>
    <a href="/notebook/onenotebook?subject=<%=asus.get(5).getSubject()%>">
        <li><img src="<%=asus.get(5).getImg()%>" alt="" class = "smallimg"></li>
    </a>
    <a href="/notebook/onenotebook?subject=<%=asus.get(6).getSubject()%>">
        <li><img src="<%=asus.get(6).getImg()%>" alt="" class = "smallimg"></li>
    </a>
   
 


 
   
    <a href="/notebook/onenotebook?subject=<%=asus.get(7).getSubject()%>">
        <li><img src="<%=asus.get(7).getImg()%>" alt="" class = "smallimg"></li>
    </a>
    <a href="/notebook/onenotebook?subject=<%=asus.get(8).getSubject()%>">
        <li><img src="<%=asus.get(8).getImg()%>" alt="" class = "smallimg"></li>
    </a>
    <a href="/notebook/onenotebook?subject=<%=asus.get(9).getSubject()%>">
        <li><img src=" <%=asus.get(9).getImg()%>" alt="" class = "smallimg"></li>
    </a>
    <a href="/notebook/onenotebook?subject=<%=asus.get(10).getSubject()%>">
        <li><img src="<%=asus.get(10).getImg()%>" alt="" class = "smallimg"></li>
    </a>
 </div>
</div>
 </article>
</div>
 



    



    <div class="content">
    <article class="articlegoods">
           <div>
         <h3><i class="fab fa-github-alt"></i> ??????????????? <i class="fab fa-github-alt"></i></h3>
        </div>
        <div class="bestadd">
            <a href="/notebook/classification?company=<%="?????????"%>" style="font-size: 10px;"  >????????????<i class="fas fa-plus"></i></a>
        </div>
       
        <div class="goodswrap">
         
            
          
        
        <div class="goods1">
            
           
        
            <a href="/notebook/onenotebook?subject=<%=reboba.get(0).getSubject()%>">
                <li><img src=" <%=reboba.get(0).getImg() %>" alt="" class = "smallimg"></li>
            </a>
            <a href="/notebook/onenotebook?subject=<%=reboba.get(1).getSubject()%>">
                <li><img src=" <%=reboba.get(1).getImg()%>" alt="" class = "smallimg"></li>
            </a>
            <a href="/notebook/onenotebook?subject=<%=reboba.get(2).getSubject()%>">
                <li><img src=" <%=reboba.get(2).getImg() %>" alt="" class = "smallimg"></li>
            </a>
            <a href="/notebook/onenotebook?subject=<%=reboba.get(3).getSubject()%>">
                <li><img src=" <%=reboba.get(3).getImg() %>" alt="" class = "smallimg"></li>
            </a>
           
    


    
      
            <a href="/notebook/onenotebook?subject=<%=reboba.get(4).getSubject()%>">
                <li><img src=" <%=reboba.get(4).getImg() %>" alt="" class = "smallimg"></li>
            </a>
            <a href="/notebook/onenotebook?subject=<%=reboba.get(5).getSubject()%>">
                <li><img src=" <%=reboba.get(5).getImg() %>" alt="" class = "smallimg"></li>
            </a>
            <a href="/notebook/onenotebook?subject=<%=reboba.get(6).getSubject()%>">
                <li><img src=" <%=reboba.get(6).getImg() %>" alt="" class = "smallimg"></li>
            </a>
            <a href="/notebook/onenotebook?subject=<%=reboba.get(7).getSubject()%>">
                <li><img src=" <%=reboba.get(7).getImg()%>" alt="" class = "smallimg"></li>
            </a>
          
    </div>


   

    <div class="goodsimgborder">
        <div class="textslide1">
        <h3 class="bestgoods">best ?????????!!</h3>
        <p class="bestgoods">????????? ?????????</p>
        <p style="font-weight: bold;" class="bestgoods">2022??? ????????? ???????????????!</p>
    </div>
         <div class="slide2wrap">
        <div class="slide2">
            <div><a href="/notebook/onenotebook?subject=<%=reboba.get(8).getSubject()%>">
           <img src=" <%=reboba.get(8).getImg()%>" alt="" class="bigimgs"></a></div>
            <div><a href="/notebook/onenotebook?subject=<%=reboba.get(9).getSubject()%>">
           <img src=" <%=reboba.get(9).getImg() %>" alt="" class="bigimgs"></a></div>
            <div><a href="/notebook/onenotebook?subject=<%=reboba.get(4).getSubject()%>">
            <img src=" <%=reboba.get(10).getImg()%>" alt="" class="bigimgs"></a></div>
        </div>
     </div>
         
      <div class="button1">
          <input type="radio" name="button2" id="button7" checked class="buttons" >
          <input type="radio" name="button2" id="button8" class="buttons"  >
          <input type="radio" name="button2" id="button9" class="buttons" >
         </div>
    
     </div>



      </div>

</div>
    </article>
</div>
    
    



<div class="content">
    <article class="articlegoods">
        <div>
      <h3><i class="fab fa-youtube"> </i>??????????????? <i class="fab fa-youtube"></i> </h3>
     </div>
     <div class="bestadd">
         <a href="/project.html/?????????/video.html" style="font-size: 10px;"  >
<i class="fas fa-plus"></i></a>
     </div>
    
     <div class="goodswrap">
      
         
       <div class="goodsimgborder">
        <div class="slidetext2">
        <h3 class="bestgoods">????????? ????????????!!</h3>
         <p style="font-weight: bold;" class="bestgoods">????????? ???????????? ?????? ?????? ?????????!!</p>
        </div> 

         <div class="slide3wrap">
            <div class="slide3">
                <div><a href="#">
                    <iframe width="300" height="300" src="https://www.youtube.com/embed/HpX_LCBGEcc" class="bigvideo"
                    title="YouTube video player" frameborder="0" 
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                <div><a href="#">
                    <iframe width="300" height="300" src="https://www.youtube.com/embed/HpX_LCBGEcc" class="bigvideo"
                    title="YouTube video player" frameborder="0" 
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></a></div>
                <div><a href="#">
                    <iframe width="300" height="300" src="https://www.youtube.com/embed/HpX_LCBGEcc" class="bigvideo"
                    title="YouTube video player" frameborder="0" 
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></a></div>
            </div>
         </div>
             
          <div class="button1">
              <input type="radio" name="button3" id="button10" checked  class="buttons">
              <input type="radio" name="button3" id="button11"  class="buttons">
              <input type="radio" name="button3" id="button12"  class="buttons">
             </div>
       </div>
     
     <div class="goods" id="slidevideo">

        
     
     <a href="#">
         <li><iframe width="150" height="150" src="https://www.youtube.com/embed/HpX_LCBGEcc"
            title="YouTube video player" frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
     </a>
     <a href="#">
        <li><iframe width="150" height="150" src="https://www.youtube.com/embed/HpX_LCBGEcc"
           title="YouTube video player" frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
    </a>
    <a href="#">
        <li><iframe width="150" height="150" src="https://www.youtube.com/embed/HpX_LCBGEcc"
           title="YouTube video player" frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
    </a>
    <a href="#">
        <li><iframe width="150" height="150" src="https://www.youtube.com/embed/HpX_LCBGEcc"
           title="YouTube video player" frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
    </a>
   


 
   
    <a href="#">
        <li><iframe width="150" height="150" src="https://www.youtube.com/embed/HpX_LCBGEcc"
           title="YouTube video player" frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
    </a>
    <a href="#">
        <li><iframe width="150" height="150" src="https://www.youtube.com/embed/HpX_LCBGEcc"
           title="YouTube video player" frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
    </a>
    <a href="#">
        <li><iframe width="150" height="150" src="https://www.youtube.com/embed/HpX_LCBGEcc"
           title="YouTube video player" frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
    </a>
    <a href="#">
        <li><iframe width="150" height="150" src="https://www.youtube.com/embed/HpX_LCBGEcc"
           title="YouTube video player" frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></li>
    </a>
  
 </div>

</div>


   
 </article>
</div>





<div>
    <article class="bestlogo">
        <h3 >???????????????</h3>
        <div class="footerlog">
            <a href="https://www.gmarket.co.kr/?jaehuid=200011415&cosemkid=go16169957326502414&gclid=EAIaIQobChMIr4XujvDZ9QIVVUFgCh0B2gx5EAAYASAAEgLxXfD%5FBwE"> <img src="http://img.danawa.com/cmpny_info/images/EE128_logo.gif" alt=""></a>
            <a href="http://www.auction.co.kr/"> <img src="http://img.danawa.com/cmpny_info/images/EE715_logo.gif " alt=""></a>
            <a href="https://www.etlandmall.co.kr/pc/main/index.do?utm_source=google&utm_medium=SA_keyword_00&utm_campaign=2201_Branding_00&utm_term=%EC%A0%84%EC%9E%90%EB%9E%9C%EB%93%9C&gclid=EAIaIQobChMI8b_FufDZ9QIVUlpgCh2YCgxQEAAYASAAEgIKRvD_BwE"> <img src=" http://img.danawa.com/cmpny_info/images/TJ918_logo.gif " alt=""></a>
            <a href="https://www.coupang.com/?src=1042016&spec=10304903&addtag=900&ctag=HOME&lptag=%EC%BF%A0%ED%8C%A1&itime=20220131011940&pageType=HOME&pageValue=HOME&wPcid=16419706073002683043839&wRef=www.google.com&wTime=20220131011940&redirect=landing&gclid=EAIaIQobChMIjI38xvDZ9QIVR9iWCh0qbAPOEAAYASAAEgJuXPD_BwE"> <img src=" http://img.danawa.com/cmpny_info/images/TP40F_logo.gif " alt=""></a>
            <a href="e-himart.co.kr/app/display/showDisplayShop?originReferrer=himartindex"> <img src=" http://img.danawa.com/cmpny_info/images/TJ418_logo.gif" alt=""></a>
            <a href="https://www.11st.co.kr/?gclid=EAIaIQobChMIg56WsfHZ9QIVUHZgCh2HcQn_EAAYASAAEgLqrPD_BwE&utm_term=E_11%B9%F8%B0%A1.&utm_campaign=%C0%CF%C4%A1+PC&utm_source=%B1%B8%B1%DB_PC_S&utm_medium=%B0%CB%BB%F6"> <img src="http://img.danawa.com/cmpny_info/images/TH201_logo.gif" alt=""></a>
            <a href="https://www.hmall.com/p/index.do"> <img src=" http://img.danawa.com/cmpny_info/images/ED907_logo.gif" alt=""></a>

        </div>
    </article>

</div>


<div class="footerwrap">
<footer>
    <div>
   <ul>
      <li>?????? (???) 07995 ??????????????? ????????? ???????????? 233-1, 501 (??????, ????????????)????????????: ?????????, ?????????</li>  
      <li>???????????????: 117-81-40065???????????????: ???2004-????????????-00918?????????????????????: ???003081???</li>
       <br>
       <br>
      <li style="font-weight: bold;">(???)???????????? ??????????????? ???????????? ????????? ?????????, ?????? ???????????? ????????? ???????????? ??????????????? ????????????.</li>
      <li>?????? ?????? (???)???????????? ????????? ????????? ?????? ????????????.</li>     
      <li>????????? ????????? ?????? ????????? ????????? ??? ??????????????? ??????????????? (?????? ?????????)?????? ???????????? ????????? ????????? ?????? ????????? ?????? ????????????.</li>
       <br>
       <br>
      <li>Copyright ?? danawa Co., Ltd. All Rights Reserved.
   </li>
    </ul>
   </div>
</footer>
</div>
<script>



document.querySelector(' #button10').addEventListener('click',function(){
     document.querySelector('.slide3').style.transform ='translate(0px)';
    
 })


 document.querySelector(' #button11').addEventListener('click',function(){
     document.querySelector('.slide3').style.transform ='translate(-323px)';
    
 }) 

 document.querySelector(' #button12').addEventListener('click',function(){
     document.querySelector('.slide3').style.transform ='translate(-645px)';
    
 })  
//==============================================================================
document.querySelector(' #button7').addEventListener('click',function(){
     document.querySelector('.slide2').style.transform = 'translate(0px)';
    
 })
  // ?????????????????? ?????????????????? ????????? 0????????????

 document.querySelector(' #button8').addEventListener('click',function(){
     document.querySelector('.slide2').style.transform = 'translate(-323px)';
    
 })  // ?????????????????? ?????????????????? ????????? -700????????????

 document.querySelector(' #button9').addEventListener('click',function(){
     document.querySelector('.slide2').style.transform = 'translate(-645px)';
    
 })  // ?????????????????? ?????????????????? ????????? -1400????????????

//===========================================================================

let slideopacity1 = document.querySelector('#button4');
let slideopacity2 = document.querySelector('#button5');
let slideopacity3 = document.querySelector('#button6');
let slideopacity4 = document.querySelector('#button7');
let slideopacity5 = document.querySelector('#button8');

// slideopacity1.style.animation = "slideopacity 1s ease-out";






document.querySelector(' #button4').addEventListener('click',function(){
     document.querySelector('.slide1').style.transform = 'translate(0px)';
     document.querySelector('#opaimg1').style.animation = "slideopacity 1s ease-out ";
     
 })
  // ?????????????????? ?????????????????? ????????? 0????????????

 document.querySelector(' #button5').addEventListener('click',function(){         
     document.querySelector('.slide1').style.transform = 'translate(-323px)';
     document.querySelector('#opaimg2').style.animation = "slideopacity 1s ease-out ";
     
 })  // ?????????????????? ?????????????????? ????????? -700????????????

 document.querySelector(' #button6').addEventListener('click',function(){
     document.querySelector('.slide1').style.transform = 'translate(-645px)';
     document.querySelector('#opaimg3').style.animation = "slideopacity 1s ease-out ";
    
 })  // ?????????????????? ?????????????????? ????????? -1400????????????

//===============================================================================

 document.querySelector(' #button1').addEventListener('click',function(){
     document.querySelector('.slide').style.transform = 'translate(0)';
    
 })
  

 document.querySelector(' #button2').addEventListener('click',function(){
     document.querySelector('.slide').style.transform = 'translate(-725px)';
    
 })  

 document.querySelector(' #button3').addEventListener('click',function(){
     document.querySelector('.slide').style.transform = 'translate(-1460px)';
    
 })  


//=============================================================================


document.querySelector('#menu_1').addEventListener('mouseover' , function(){
  
    $('#iconclick').show();
    $('#hambuger2').hide();
   

})   // ????????????????????? ???????????????????????? ??????????????? ?????????????????? 

document.querySelector('#iconclick').addEventListener('mouseover' , function(){
    
    $('#iconclick').show();
    $('#hambuger2').hide();
   

})  //???????????? ??????????????? ????????????????????? ?????????????????? ???????????? ????????????

document.querySelector('#iconclick').addEventListener('mouseout' , function(){
   
    $('#iconclick').hide();
   
    // ????????? ??????????????? ???????????? ????????? ?????????????????? 
    $('#hambuger2').show();
})  



document.querySelector('#menu_1').addEventListener('mouseout' , function(){
    $('#iconclick').hide();
    // ?????????????????? ???????????? ????????? ??????????????????
    $('#hambuger2').show();
})


//============================================================================


document.querySelector('#clickimpo').addEventListener('mouseover' , function(){
  
    $('#clickimpo_1').show();
   // ??????????????? ????????? ????????? ??????????????? ???????????? ??????
   $('#hambuger2').hide();
   
})


document.querySelector('#clickimpo').addEventListener('mouseout' , function(){
   
    $('#clickimpo_1').hide();
      // ??????????????? ????????? ??? ????????? ???????????? ?????????
      $('#hambuger2').show();
})



document.querySelector('#clickimpo_1').addEventListener('mouseover' , function(){
   
    $('#clickimpo_1 ').show();
      // ???????????? ??????????????? ????????? ????????? ???????????? ????????????
      $('#hambuger2').hide();
})



document.querySelector('#clickimpo_1').addEventListener('mouseout' , function(){
   
    $('#clickimpo_1 ').hide();
     // ?????????????????? ???????????? ????????? ??????????????????
     $('#hambuger2').show();
})  



// document.querySelector('#clickimpo').addEventListener('mouseover' , function(){
   
//    $('#newyearlogo').opacity('0');
//     // ?????????????????? ???????????? ????????? ??????????????????
// })  


// document.querySelector('#clickimpo').addEventListener('mouseout' , function(){
   
//    $('#newyearlogo').opacity('1');
//     // ?????????????????? ???????????? ????????? ??????????????????
// })  




// document.querySelector('#clickimpo_1').addEventListener('mouseover' , function(){
   
//    $('#newyearlogo').opacity('0');
//     // ?????????????????? ???????????? ????????? ??????????????????
// })  


// document.querySelector('#clickimpo_1').addEventListener('mouseout' , function(){
   
//    $('#newyearlogo').opacity('1');
//     // ?????????????????? ???????????? ????????? ??????????????????
// })  

//=====================================================================================


document.querySelector('#clicknotebook').addEventListener('mouseover' , function(){
   
    $('#clicknotebook_1').show();
        // ?????????????????? ????????? ????????? ??????????????? ???????????? ?????? 
        $('#hambuger1').hide();
})


document.querySelector('#clicknotebook').addEventListener('mouseout' , function(){
   
    $('#clicknotebook_1').hide();
     // ????????????????????? ????????? ????????? ??????????????????
     $('#hambuger1').show();
})



document.querySelector('#clicknotebook_1').addEventListener('mouseover' , function(){
   
    $('#clicknotebook_1 ').show();
      
      // ?????????????????? ????????? ????????? ??????????????? ???????????? ?????? 
      $('#hambuger1').hide();
})



document.querySelector('#clicknotebook_1').addEventListener('mouseout' , function(){
   
    $('#clicknotebook_1 ').hide();
   // ?????????????????? ???????????? ????????? ??????????????????
   $('#hambuger1').show();
})








let horizontalMenus = document.querySelectorAll('.menu:first-child span')
let horizontalunderline = document.getElementById('horizontal-underline');


horizontalMenus.forEach(menu=>menu.addEventListener("click", (e) => horizontalIndicator(e)))

function  horizontalIndicator(e){
    
 horizontalunderline.style.left = e.currentTarget.offsetLeft + "px";
 horizontalunderline.style.width = e.currentTarget.offsetWidth + "px";
 horizontalunderline.style.top = 
 e.currentTarget.offsetTop + e.currentTarget.offsetHeight + "px";
}








const spans = document.querySelectorAll('.menu span')
const contents = document.querySelectorAll(".content")
const contents1 = document.querySelector(".content1")
const content2 = document.querySelector('.content2')

const firstTopond = contents1.offsetTop
const secondTop1 = contents[0].offsetTop
const secondTop2 = contents[1].offsetTop
const  secondTop3 = contents[2].offsetTop
const secondTop4 = contents[3].offsetTop


spans[0].onclick = function(){
    window.scroll({top:firstTopond, behavior: 'smooth'})
    
}

spans[1].onclick = function(){
    window.scroll({top:secondTop1-250, behavior: 'smooth'})
}

spans[2].onclick = function(){
    window.scroll({top:secondTop2-200, behavior: 'smooth'})
}

spans[3].onclick = function(){
    window.scroll({top:secondTop3-200, behavior: 'smooth'})
}

spans[4].onclick = function(){
    window.scroll({top:secondTop4-200, behavior: 'smooth'})
}




// <input type="text" id="text" placeholder="???????????? 2022??? ???????????? ????????????.????????????" style="text-align: center;">
const placeholder = document.getElementById('text');
const texts = document.getElementById("text");

placeholder.addEventListener('click', function(){
        this.placeholder = '???????????? ??????????????????';
        this.style.borderLeft = "1px solid #c3f8a4";
        this.style.borderTop = "1px solid #5df542";
        this.style.borderRight = "1px solid #42f5f5";
        this.style.borderBottom = "1px solid #42e3f5";
   
})





placeholder.addEventListener('blur' , function(){
    this.placeholder = "???????????? 2022??? ???????????? ????????????.????????????";
  
  
})






let textslide = document.querySelector('.textslide');

window.addEventListener('scroll', function(){
    let value = window.scrollY;
    

  
     if(value > 800){
        textslide.style.animation="slidetext 1s ease-out ";
    }
     
     else if(value < 900){
        textslide.style.animation ="backslidetext 1s ease-out ";
     }
     
});



let slideimg = document.querySelector('.goods');

window.addEventListener('scroll', function(){
    let values = window.scrollY;
    



     if(values > 1044){
        slideimg.style.animation ="slideimg 1s ease-out  ";
    }
     
     else if(values < 1100){
        slideimg.style.animation ="backslideimg 1s ease-out  ";
     }
     
});





let textslide1 = document.querySelector('.textslide1');

window.addEventListener('scroll', function(){
    let value1 = window.scrollY;
   


    

     if(value1 > 1500){
        textslide1.style.animation ="slidetext1 1s ease-out  ";
    }
     
     else if(value1< 1600){
        textslide1.style.animation ="backslidetext1 1s ease-out  ";
     }
     
});


let imgslide1 = document.querySelector('.goods1');

window.addEventListener('scroll', function(){
    let value2 = window.scrollY;



    

     if(value2 > 1512){
        imgslide1.style.animation ="slideimg1 1s ease-out  ";
    }
     
     else if(value2 < 1600){
        imgslide1.style.animation ="backslideimg1 1s ease-out";
     }
     
});



let textslide2 = document.querySelector('.slidetext2');

window.addEventListener('scroll', function(){
    let value3 = window.scrollY;
    console.log('scrollY' , value3);



     if(value3 > 2200){
        textslide2.style.animation ="slidetext2 1s ease-out  ";
    }
     
     else if(value3 < 2475){
        textslide2.style.animation ="backslidetext2 1s ease-out  ";
     }
     
});


let slidevideo1 = document.querySelector('#slidevideo');

window.addEventListener('scroll', function(){
    let value4 = window.scrollY;
  
     if(value4 > 2300){
        slidevideo1.style.animation ="slidevideos 1s ease-out";
    }
     
     else if(value4 < 2400){
        slidevideo1.style.animation ="backslidevideos 1s ease-out ";
     }
     
});





 let showmenu = document.getElementById('Allmenuwrap');
document.getElementById('allmenus').addEventListener('mouseover' , function(){
   
 showmenu.style.visibility = "visible";
    
})







let showmenu1 = document.getElementById('Allmenuwrap');
document.getElementById('Allmenuwrap').addEventListener('mouseout' , function(){
   
 showmenu1.style.visibility = "hidden";
     
     
    
})


let showmenu2 = document.getElementById('Allmenuwrap');
document.getElementById('Allmenuwrap').addEventListener('mouseover' , function(){
   
 showmenu2.style.visibility = "visible";
     
     
    
})
</script>


</body>

</html>