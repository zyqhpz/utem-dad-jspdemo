<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- Import all the necessary classes --%>  
<%@ page import="demo.hogwarts.House" %>
<%@ page import="demo.hogwarts.HouseFacade" %>  

<%
	
	// Get parameter value from link
	// Use request.getParameter( ).  
	//It is similar practice from the Servlet.
	
	// get ID as int
	int id = Integer.parseInt(request.getParameter("id"));
	
	// Wrap into House
	House house = new House();
	house.setHouseId(id);

	// Get house. Use house Facade
	HouseFacade houseFacade = new HouseFacade();
	house = houseFacade.getHouse(house);

	// Get name of house
	String name = house.getName();

	// Get founder of house
	String founder = house.getFounder();
	
%>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- The title bar should display the house name -->
<title>Details Information of <%= name %></title>
</head>
<body>

<br><br><br>
<!-- The heading should display the house name -->
<h4>Details Information of <%= name %> </h4>

<b>Name: <%= name %></b><br><br>
<b>Founder: <%= founder %></b><br><br>
<b>Color: <%= house.getColor() %></b><br><br>
<b>Mascot: <%= house.getMascot() %></b><br><br>

<!-- Include a footer menu -->
<!-- A link to return to list of houses page -->
<br><br>
Click <a href="houses.jsp">here</a> to return to list of Hogwarts's Houses.

<jsp:include page="footerMenu.html" />

</body>
</html>