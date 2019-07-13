
<%@page import="java.sql.ResultSet"%>
<%@page import="myproject.DatabaseConnector"%>
<div class="slideshow">
<center><img src="Example/image-folder/13.jpg" alt="Slideshow Image Script" title="Slideshow Image Script" name="slide" border=0 width=200 height=200><a href="https://www.hscripts.com" style="text-decoration:none;cursor:pointer;font-size:12px;color:green;"></center></a>
<script type="text/javascript">
slideshowimages("Example/image-folder/9.jpg","Example/image-folder/11.jpg","Example/image-folder/12.jpg")
var slideshowspeed=2000
var whichimage=0
function slideit()
{
if (!document.images)
return
document.images.slide.src=slideimages[whichimage].src
if (whichimage<slideimages.length-1)
whichimage++
else
whichimage=0
setTimeout("slideit()",slideshowspeed)
}
slideit()
</script>

</div>
<!-- Script by hscripts.com -->
    
<!--Script by hscripts.com-->
<!-- more scripts @ https://www.hscripts.com -->
<br>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30"> 
        <!-- Left Column -->
       
        <!-- / Left Column --> 
        <!-- Middle Column -->
      
        
        <!-- / Middle Column --> 
        <!-- Right Column -->
        
<div class="one_quarter sidebar"> 
          <!-- ################################################################################################ -->
          <div class="sdb_holder">
            <h6>Tour</h6>
       <iframe title="YouTube video player" class="youtube-player" type="text/html" 
width="220" height="200" src="https://www.youtube.com/embed/z5Q98LGD_ic"
frameborder="0" allowFullScreen></iframe>
       <a href="https://www.youtube.com/user/niharsail">View More Tour Videos Here</a>
          </div>
        <!-- / Right Column --> 
        <div class="sdb_holder">
            <h6>Quick Information</h6>
            <div class="image1">
                <img src="images/DSA/Nihar.jpg" alt="" width="100"></div>
           <a href="NiharSail.jsp">Nihar Sail</a>
           <a href="SayaleeSail.jsp">Sayalee Sail</a>
          </div>
      </div>
  
    </main>
  </div>
</div>
