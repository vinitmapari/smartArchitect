<%-- 
    Document   : AddProjectPics
    Created on : 7 Jan, 2016, 11:26:50 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <script>
function readURL1(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah1')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
					
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
        </script>
    </head>
    <body bgcolor="#40E0D0">
 <form action="UploadServlet" method="post" enctype="multipart/form-data" name="form1" id="form1" >
     <table>
         <tr>
               <td>Images</td>
             <td><input type="file"  id="file" name="file1" accept="image/*" onchange="readURL1(this)" multiple="muliple" required></td>
                    <img id="blah1" src="#" alt="your image" />
     </tr>
     <tr>
         <td>Description</td>
         <td><textarea name="txtDescription" rows="3" cols="16"></textarea></td>
     </tr>
     <tr>
     <td><input type="submit"  name="Submit" value="submit">${requestScope.message}</td>
     </tr>
  </form>
 </body>
</html>
