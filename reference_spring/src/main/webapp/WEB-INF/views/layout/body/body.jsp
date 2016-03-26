<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-md-4">
		<c:if test="${isLoginYn == 'Y'}">
			<div class="col-md-6">
				<img alt="Bootstrap Image Preview"
					src="http://lorempixel.com/140/140/" class="img-thumbnail" />
			</div>
			<div class="col-md-6">
				<address>
					<strong>사용자 정보</strong><br />Email : ${sessionScope.email}<br />
					PW : ${sessionScope.pass}<br /> Lv : ${sessionScope.lv}
				</address>
			</div>
		</c:if>
		<c:if test="${isLoginYn != 'Y'}">
			<form class="form-horizontal" role="form" action="/spring/main/login"
				method="post">
				<div class="form-group">

					<label for="inputEmail3" class="col-sm-3 control-label"
						style="text-align: left"> Email </label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail3"
							value="test@test.com" name="email" />
					</div>
				</div>
				<div class="form-group">

					<label for="inputPassword3" class="col-sm-3 control-label">
						Password </label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword3"
							value="test" name="pass" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox" /> Remember me
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">login</button>
						<button type="submit" class="btn btn-default">Sign in</button>
					</div>
				</div>
			</form>
		</c:if>

	</div>
	<div class="col-md-4">
		정보/소식
		<address>
			<strong>Twitter, Inc.</strong><br /> 795 Folsom Ave, Suite 600<br />
			San Francisco, CA 94107<br /> <abbr title="Phone">P:</abbr> (123)
			456-7890
		</address>
	</div>
	<div class="col-md-4">
		정보/소식
		<address>
			<strong>Twitter, Inc.</strong><br /> 795 Folsom Ave, Suite 600<br />
			San Francisco, CA 94107<br /> <abbr title="Phone">P:</abbr> (123)
			456-7890
		</address>
	</div>
</div>
<div class="row">
	그리드 부분
	<div class="col-md-12">
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>Product</th>
					<th>Payment Taken</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>TB - Monthly</td>
					<td>01/04/2012</td>
					<td>Default</td>
				</tr>
				<tr class="active">
					<td>1</td>
					<td>TB - Monthly</td>
					<td>01/04/2012</td>
					<td>Approved</td>
				</tr>
				<tr class="success">
					<td>2</td>
					<td>TB - Monthly</td>
					<td>02/04/2012</td>
					<td>Declined</td>
				</tr>
				<tr class="warning">
					<td>3</td>
					<td>TB - Monthly</td>
					<td>03/04/2012</td>
					<td>Pending</td>
				</tr>
				<tr class="danger">
					<td>4</td>
					<td>TB - Monthly</td>
					<td>04/04/2012</td>
					<td>Call in to confirm</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
