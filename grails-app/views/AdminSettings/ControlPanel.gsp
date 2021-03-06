



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="../../docs-assets/ico/favicon.ico">
<meta name="layout" content="main">
<r:require modules="bootstrap" />
<r:layoutResources />
<title>Settings</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'dashboard.css')}" type="text/css">
<script src="${resource(dir: 'js', file: 'holder.js')}">
	
</script>

<!-- Custom styles for this template -->
<link href="dashboard.css" rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
	
</script>
<script>
	$(document).ready(function() {
		$("#searchtext").hide();
		$("#search").click(function() {
			$("#searchtext").toggle();
		});
	});
</script>

</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><a href="${createLink(uri: '/admin/index')}">Dashboard</a></li>
					<li><a href="${createLink(uri: '/admin/getNewApp')}">New Appointments</a></li>
				
					<li><a href="${createLink(uri: '/admin/manageReceptionAccounts')}">Manage Reception Accounts</a></li>
					<li><a href="${createLink(uri: '/admin/manageDoctorAccounts')}">Manage Doctor Accounts</a></li>
					
					<li><a href="${createLink(uri: '/admin/viaSMS')}">Appointments taken via SMS</a></li>
					<li><a href="${createLink(uri: '/admin/feedres')}">Feedback</a></li>
					<li><a href="ControlPanel">Settings</a></li>
					<%--<li id="search"><a href="#">Search</a></li>
				--%></ul>

			</div>
			<div class="col-sm-10 col-sm-offset-2 main">
				<h1 class="page-header">Settings</h1>
				
				<div class="table-responsive">

					<g:form action="saveChanges">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Field</th>
							<th>Value</th>
						</tr>
					</thead>
					<tr>

						<td>Opening Time</td>
						<td><select name="start" >
								<g:each in="${0..23}">
									<option value="${it}:00">
										${it}:00
									</option>
									<option value="${it}:30">
										${it}:30
									</option>
								</g:each>
						</select></td>
					</tr>
					<tr>
						<td>Closing Time</td>
						<td><select name="end" >
								<g:each in="${1..23}">
									<option value="${it}:00">
										${it}:00
									</option>
									<option value="${it}:30">
										${it}:30
									</option>
								</g:each>
						</select></td>
					</tr>

					</td>
					</tr>
					<tr>
						<td>Time required for MRI</td>
						<td><input type="text" name="mriinterval" value="${mriInterval }"/> (in minutes)</td>
					</tr>
					<tr>
						<td>Time required for CT Scan</td>
						<td><input type="text" name="ctinterval" value="${ctInterval }"/> (in minutes)</td>
					</tr>
					<tr>
						<td>Do you want SMS based appointment booking facility?</td>
						<td>
						<p><input type="checkbox" name="sms" value="Yes"/>&nbsp Yes</p>
						<p><input type="checkbox" name="sms" value="No"/>&nbsp No</p>
						</td>
					</tr>
					<tr>
						<td><b>Enter the details below only if SMS based facility is being availed : </b></td>
						<td></td>
					</tr>
					<tr>
						<td>SMS Username</td>
						<td><input type="text" name="smsuser" value="${username }"/></td>
					</tr>
					<tr>
						<td>SMS Password</td>
						<td><input type="password" name="smspass" value="${password }"/></td>
					</tr>
					
					<tr>
					
						<td>Confirmed Message note</td>
						<td><input type="text" name="confirmedmsg" size="50" value="${confirmedmsg1 }"/></td>
			
					</tr>
				
					<tr>
						<td>ShortCode for SMSBased Appointment</td>
						<td><input type="text" name="smscode" value="${smscode1}"/></td>
				
					</tr>
					<script>
						function popup() {
							alert("Please check timings");
							}
					</script>
					
					<tr>
						<td></td>
						<td><g:actionSubmit class="btn btn-info" value="Save Changes" /></td>
					</tr>
						
				</table>
				</g:form>
				<form>
	<input type="button" value="suresh" onClick="popup()"/>
	</form>
	
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

</body>
</html>
