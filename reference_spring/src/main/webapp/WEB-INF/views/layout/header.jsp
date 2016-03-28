<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
requirejs(['jquery', 'bootstrap'], function($) {
/* 	$('ul.nav > li').click(function(){
		$('ul.nav > li').attr('class', ''); //초기화
		$(this).attr('class', 'active');
				
	}) */

});
	
</script>
<div class="row">
	<h3>first design by hjw (sector header)</h3>
	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">

			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Brand</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav" id="test">
				<li><a href="./home">HOME</a></li>
				<li><a href="./boardpage">메뉴1</a></li>
				<li><a href="./schedulerpage">메뉴2</a></li>
<!-- 				<li><a href="#">HOME</a></li>
				<li><a href="#">메뉴1</a></li>
				<li><a href="#">메뉴2</a></li> -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Dropdown메뉴<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" />
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="./logout">logout</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul></li>
			</ul>
		</div>

	</nav>
</div>
