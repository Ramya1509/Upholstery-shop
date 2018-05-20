<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
body,html {
  font-family: 'Open Sans', 'sans-serif';
   height: 100%;
    background-repeat: no-repeat;
    background-image: linear-gradient(#469e9c, #BC9178);
}

</style>


<style type="text/css">

.carousel{
    background: #BC9178;
    margin-top: 20px;
}
.carousel .item img{
    margin: 0 auto; /* Align slide image horizontally center */
}
.bs-example{
	margin: 20px;
}
 
</style>
<style type="text/css">
    ul{
        padding: 0;
        list-style: none;
        background:	#BC9178;
    }
    ul li{
        display: inline-block;
        position: relative;
        line-height: 40px;
        text-align: left;
    }
    ul li a{
        display: block;
        padding: 6px 25px;
         color: #F0FFFF;
        text-decoration: none;
    }
    ul li a:hover{
        color: #0000FF;
        background :#F0FFFF ;
    }
    ul li ul.dropdown{
        min-width: 100%; /* Set width of the dropdown */
        background:#469e9c;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
    ul li:hover ul.dropdown{
        display: block;
        	/* Display the dropdown */
    }
    ul li ul.dropdown li{
        display: block;
    }
   
}
</style>

<style type="text/css">
.stylish-input-group .input-group-addon
{
    background:#469e9c!important;
    
}
.stylish-input-group .form-control{
	margin-top:0px;
	border-top:100; 
	box-shadow:0 0 0; 
	border-color:#469e9c;
}
.stylish-input-group button
{
    border:0;
    background:transparent;
    border-color:#2e6da4;    
}
.btn-primary {
    color: #fff;
    background-color: #469e9c;
    border-color: #2e6da4;
}
.btn-primary {
    color: #fff;
    background-color: #469e9c;
    border-color: #2e6da4;
    
}


</style>

<body>

<%--  <div class="panel panel-default">
 <div class="container">
  <div class="row">
    <div class="col-xs-3">
   <div class="item">
   <img src="<c:url value="/resources/images/img logo.jpg"/>" height=100px width=270px/></div>
    </div>
    <div class="col-xs-7">
    <i><h2 style="color:#BC9178;">Achoo Upholstery Solution</h2></i>
      <div id="imaginary_container"> 
<div class="input-group stylish-input-group">
<input type="text" class="form-control"  placeholder="Search" >
<span class="input-group-addon">
<button type="submit">
<span class="glyphicon glyphicon-search"></span>
 </button>  
 </span>
 </div>
</div>
    </div>
    
    <div class="col-xs-2">
      
<div class="text-center">

<a href="getlogin"><button type="button" class="btn btn-primary">Login</button> </a>
<a href="getregister"><button type="button" class="btn btn-primary">Register</button> </a>		  

     <c:url value="logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<c:if test="${pageContext.request.userPrincipal.name != null}">
	 
<a href="logout"><button type="button" class="btn btn-primary">Logout</button></a>
</c:if> 
        </div>
    </div>
 </div>
    </div>
    </div>
      
         
    <ul>
        <li><a href="#">Achoo Upholstery</a></li>
         <li>
            <a href="#">Sofa Sets &#9662;</a>
            <ul class="dropdown">
            <li><a href="#">Fabric Sofa Sets</a></li>
            <li><a href="#">Wooden Sofa Sets</a></li>
            <li><a href="#">L Shaped Corner Sofa</a></li>
            <li><a href="#">Chesterfield Sofass</a></li>
            <li><a href="#">Sectional Sofas</a></li>
            </ul>
        </li>
    <li>
            <a href="#">BEDROOM STORAGE & ACCESSORIES &#9662;</a>
            <ul class="dropdown">
                <li><a href="#">Queen Size Bedss</a></li>
                <li><a href="#">King Size Beds</a></li>
                <li><a href="#">Single Beds</a></li>
                <li><a href="#">Upholstered Beds</a></li>
                <li><a href="#">Bedside Table</a></li>
                <li><a href="#">Wardrobes</a></li>
                <li><a href="#">Trunk & Blanket Boxes</a></li>
            </ul>
        </li>
        
        <li>
            <a href="#">Home Furniture &#9662;</a>
            <ul class="dropdown">
                <li><a href="#">Dining Table</a></li>
                <li><a href="#">Laptop Table</a></li>
                <li><a href="#">Shoe Rack</a></li>
                <li><a href="#">Office Table</a></li>
                <li><a href="#">T.V Units</a></li>
                <li><a href="#">Sofas</a></li>
                <li><a href="#">Study Table</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Kitchen and Dining &#9662;</a>
            <ul class="dropdown">
                <li><a href="#">Bottle and Container</a></li>
                <li><a href="#">Pot and Pans</a></li>
                <li><a href="#">Pressure Cookers</a></li>
                <li><a href="#">Gas Stoves</a></li>
                <li><a href="#">Dinner Sets</a></li>
                <li><a href="#">Kitchen Tools</a></li>
                <li><a href="#">Cocktail Glasses</a></li>
            </ul>
        </li>
        <li>
            <a href="#">HomeDecor and Lighting &#9662;</a>
            <ul class="dropdown">
                <li><a href="#"></a></li>
                <li><a href="#">LED Bulbs</a></li>
                <li><a href="#">Mirrors</a></li>
                <li><a href="#">Decoration Lights</a></li>
                <li><a href="#">Artwork</a></li>
                <li><a href="#">PhotoFrames</a></li>
                <li><a href="#">Table Lamps</a></li>
            </ul>
        </li>
        
        </li>
        
        
         <li>
            <a href="#">Category &#9662;</a>
            <ul class="dropdown">
                <li><a href="getcategory">Add</a></li>
                <li><a href="getcategory">View</a></li>
                
            </ul>
        </li>
        
        
         <li>
            <a href="#">Product &#9662;</a>
            <ul class="dropdown">
                <li><a href="getproduct">Add</a></li>
                <li><a href="viewproduct">View</a></li>
                
            </ul>
        </li>
        
         <li>
            <a href="#">Supplier &#9662;</a>
            <ul class="dropdown">
                <li><a href="getsupplier">Add</a></li>
                <li><a href="viewsupplier">View</a></li>
                
            </ul>
        </li>
    </ul>
    
    
    <ul class="nav navbar-nav navbar-right">
				<c:if test="${name == null }">
				<li><a href="getlogin">Login</a></li>
				<li><a href="getregister">Register</a></li></c:if>
				<c:if test="${name!='supri' && name !=null}">
				<li><a href="#"><span
						class="glyphicon glyphicon-shopping-cart"> Cart</span></a></li></c:if>
						<c:if test="${name != null }">
						<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li></c:if>
			</ul>
     --%>
    <%@ include file="/WEB-INF/views/Menu.jsp" %>
    
<div class="bs-example">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
             <li data-target="#myCarousel" data-slide-to="5"></li>
             
        </ol> 
          
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
            <div class="item active">
                <div><img src="<c:url value="/resources/images/img1.jpg"/>"height=350px width=100%></div>
            </div>
            <div class="item">
             <div><img src="<c:url value="/resources/images/img2.jpg"/>"height=350px width=100%></div>
       
        </div>
        <div class="item">
             <div><img src="<c:url value="/resources/images/img3.jpg"/>"height=350px width=100%></div>
             </div>
        
       <div class="item">
             <div><img src="<c:url value="/resources/images/img4.jpg"/>"height=350px width=100%></div>
             </div>
              <div class="item">
             <div><img src="<c:url value="/resources/images/img5.jpg"/>"height=350px width=100%></div>
             </div>
              <div class="item">
             <div><img src="<c:url value="/resources/images/img6.jpg"/>"height=350px width=100%></div>
             </div>
              
        </div>
        <!-- Carousel controls -->
       <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<%@ include file="/WEB-INF/views/productlist.jsp" %>
    
    </body>
    </html>    