<!DOCTYPE html >
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
prefix="form"%>
<title>Kill Nemesis</title>
<link rel="stylesheet" type="text/css" href="stylesheet.css" />
<link rel="stylesheet" type="text/css" href="skeleton.css" />

	<ul>
			<li><a href="Heroes.do" >See Hero Directory</a></li>
			<li><a href="addHero.html">Add Hero to Directory</a></li>
			<li><a href="goToChangeHero.do">Change a Hero's Name</a></li>
			<li><a class="active" href="goToKillNemesis.do">Kill a Nemesis</a></li>
			<li><a class="about" href="https://www.linkedin.com/in/steven-zuber-9849095b">About the Author</a></li>
</ul>
</head>
<body>
<h3>Which hero suddenly snaps and kills their nemesis??</h3>
	<form action="killNemesis.do" method="POST">
		<select name="heroName">
			<c:forEach var="hero" items="${heroList}">
				<option value="${hero.heroName}">${hero.heroName}</option>
			</c:forEach>
		</select> 
		<br />
		<input type="submit" value="Kill Nemesis" />
	</form>

<div class="footer">&copy; <a href="http://stevenzuber.info">Steven Zuber</a> in week 7 of Skill Distillery </div>
</body>
</html>