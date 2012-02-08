<!doctype html>
<html>
	<head>
		<!--- title set by a view - there is no default --->
		<title>DFW CFML UG - <cfoutput>#rc.title#</cfoutput></title>
		<link href="/css/bootstrap.min.css" rel="stylesheet" />
		<style type="text/css">
	      body {
	        padding-top: 60px;
	        padding-bottom: 40px;
	      }
	    </style>
	</head>
	<body>
		<cfoutput>
		<div class="container">
			
			<div class="navbar navbar-fixed-top">
		      <div class="navbar-inner">
		        <div class="container">
		          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </a>
		          <a class="brand" href="#buildURL(action="main")#">DFW CFML UG</a>
		          <div class="nav-collapse">
		            <ul class="nav">
		              <li class="#rc.action == 'main.default' ? 'active' : ''#"><a href="#buildURL(action="main")#">Home</a></li>
		              <li class="#rc.action == 'main.about' ? 'active' : ''#"><a href="#buildURL(action="main.about")#">About</a></li>
		              <li class="#rc.action == 'main.contact' ? 'active' : ''#"><a href="#buildURL(action="main.contact")#">Contact</a></li>
		            </ul>
		          </div><!--/.nav-collapse -->
		        </div>
		      </div>
		    </div>

			#body#	<!--- body is result of views --->

			<hr />
			<footer>&copy; DFW CFML UG #dateFormat(now(),'yyyy-mm-dd')#</footer>
		</div>
		</cfoutput>

		<script src="/js/jquery-1.7.0.min.js" type="text/javascript"></script>
		<script src="/js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>