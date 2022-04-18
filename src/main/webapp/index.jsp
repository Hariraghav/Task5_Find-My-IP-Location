<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="ip.*"%>
<html>
<head>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
		
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title>Find My IP</title>
  </head>
</head>
<body>
<%
String ip = request.getHeader("X-Forwarded-For");  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("Proxy-Client-IP");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("WL-Proxy-Client-IP");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("HTTP_X_FORWARDED_FOR");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("HTTP_X_FORWARDED");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("HTTP_X_CLUSTER_CLIENT_IP");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("HTTP_CLIENT_IP");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("HTTP_FORWARDED_FOR");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("HTTP_FORWARDED");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("HTTP_VIA");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getHeader("REMOTE_ADDR");  
}  
if (ip == null || ip.length() == 0 || ip.equalsIgnoreCase("unknown")) {  
    ip = request.getRemoteAddr();  
}  
		Location l = new Location();
		LocationDetails ld = l.getLoc(ip);
%>
 <div style="margin: 30px">   
      <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <div class="container-fluid justify-content-center">
            <a class="navbar-brand" href="/">What's My IP</a> 
          </div>
        </nav>
      </header>    
</div>
<div class="container w-50 text-center ">
    <table class="table table-striped">
       
      
          <tr>
       
            <td>IP=<%= ld.getIp() %></td>
          
          <tr>
         
            <td><%= ld.getCity() %></td>
            
          </tr>
          <tr>
          
            <td><%= ld.getLongitude()%></td>
          </tr>
          <tr>

            <td><%= ld.getIsp_name()%></td>
          </tr>
          <tr>
        
            <td><%= ld.getCountry() %></td>
          </tr>
          <tr>
            
            <td><%= ld.getTimezone() %></td>
          </tr>
          <tr>
           
            <td><%= ld.getLatitude() %></td>
          </tr>
          <tr>
         
            <td><%= ld.getRegion()%></td>
          </tr>
          <tr>
          
            <td><%= ld.getCountry_code()%></td>
          </tr>
      
      </table>


</div>


</body>
</html>