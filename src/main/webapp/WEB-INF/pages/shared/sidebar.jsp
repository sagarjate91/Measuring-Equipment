<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <div class="list-group">

    <c:if test="${sessionScope.role=='ADMIN'}">

   		<a href="${contextRoot}/admin/" class="list-group-item" id="active">Panel 1</a>
   	    <a href="${contextRoot}/admin/" class="list-group-item" id="active">Panel 2</a>
   	    <a href="${contextRoot}/admin/" class="list-group-item" id="active">Panel 3</a>
      	<a href="${contextRoot}/admin/" class="list-group-item" id="active">Panel 4</a>
     	<a href="${contextRoot}/measuring/equipment/logout" class="list-group-item" id="active">Logout</a>
   
   
   	</c:if>


      <!--  User Panel -->
      <c:if test="${sessionScope.role=='CUSTOMER'}">

		<a href="${contextRoot}/measuring/equipment/customer/new-equipment.htm" class="list-group-item" id="customer">New Equipment Creation</a>
		<a href="${contextRoot}/measuring/equipment/customer/update-equipment.htm" class="list-group-item" >Update Equipment</a>
        <a href="${contextRoot}/measuring/equipment/customer/issue-equipment.htm" class="list-group-item" >Issue Equipment</a>
        <a href="${contextRoot}/measuring/equipment/logout" class="list-group-item" >Logout</a>
   
      </c:if>

  </div>