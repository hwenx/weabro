<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div id="header" style="position: fixed; top: 0px; z-index: 1001;">
         <section class="logo-area">
		<h1 id="lbTitle"><img src="/resources/images/img_logo.png" alt="Samsung SMART TV" /></h1>
		<div class="util-menu"> <!-- user menu -->
			<p class="user-id">{{userName}}</p>
            <p class="my-acnt"><a ng-click="logout()" style="cursor:pointer">LOGOUT</a></p>
		</div>
	</section>
		<section class="gnb-area">
			<!--  top-menu -->
			<topmenu></topmenu>
			<!--  // top-menu -->
		</section>
</div>