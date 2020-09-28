<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${contextRoot}/measuring/equipment/">Measuring Equipment Services</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
					
					<c:if test="${sessionScope.role==null}">

						<li id="home"><a href="${contextRoot}/measuring/equipment/home.htm">Home</a></li>
						<li id="customer"><a href="${contextRoot}/measuring/equipment/customer.htm">Customer</a></li>
						<li id="admin"><a href="${contextRoot}/measuring/equipment/admin.htm">Admin</a></li>
						<li id="signup"><a href="${contextRoot}/measuring/equipment/signup.htm">Signup</a></li>

					</c:if>
		

				</ul>
			 </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

