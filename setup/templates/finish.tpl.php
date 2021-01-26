
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DEPRIXA -  Integrated Web system | Installer</title>
    <link rel="shortcut icon" type="image/png" href="ui/favicon.png">
    <link href="ui/css/bootstrap.min.css" rel="stylesheet">
    <link type='text/css' href='ui/css/style.css' rel='stylesheet'/>
	<link rel="stylesheet" type="text/css" href="<?php SITEURL ?>../assets/css/style.css">
	<!-- responsive style sheet -->
	<link rel="stylesheet" type="text/css" href="<?php SITEURL ?>../assets/css/responsive.css">

</head>
<body style='background-color: #FFF;'>
	<div id='main-container'>
		<div class='header'>
				<!-- navbar header -->
			  <div class="navbar-header">
				<button class="pull-right visible-xs dk" ui-toggle="show" target=".navbar-collapse">
				  <i class="glyphicon glyphicon-cog"></i>
				</button>
				<button class="pull-right visible-xs" ui-toggle="off-screen" target=".app-aside" ui-scroll="app">
				  <i class="glyphicon glyphicon-align-justify"></i>
				</button>
				<!-- brand -->
				 <img src="ui/logo.png" height="39" width="190">
				  
				<!-- / brand -->
			  </div>
			  <!-- / navbar header -->

		</div>
		<!--  contents area start  -->
		<div class="col-md-12">
		   <hr>
			<div class="inner-content">pre-installation check &raquo; license &raquo; configuration &raquo; <b>completed</b></div>
			<h2 id="install">Installation completed</h2>
			</br>
			<table width="97%" cellpadding="0" cellspacing="0" style="margin: 0 10px 10px 10px;">
			  <tr>
				<td colspan="2"><h5 id="log">Installation log:</h5></td>
			  </tr>
			  <tr>
				 <td class="inner-content" style="vertical-align: top;"> 
					<table width="100%">
						<tr>
							<td align="left">
								<div class="alert alert-success" role="alert">
									 <p>Thank you for choosing</br> <strong>DEPRIXA -  Integrated Web system.</strong></p>
								</div>
							</td>
						</tr>
					</table>	
				 </td>
				  
				<td class="inner-content" style="vertical-align: top;">
					<table width="100%">
						<tr>
						  <td class="elem">Database Installation</td>
						  <td align="left">
						<?php if ($msg):?>
						  <?php echo '<span class="no">Error during MySQL queries execution:</span><br />'; ?>
						  <?php echo $msg; ?>
						<?php else : ?>
						  <?php echo '<span class="yes">OK</span>'; ?>
						<?php endif; ?>
						</td>
						</tr>
						
						<tr>
						  <td colspan="2"><div class="remove_install">Now you MUST completely remove 'setup' directory from your server.</div><br />
						  <div class="remove_install">Please for security reasons chmod your /lib/ directory to 0755.</div></td>
						</tr>
					</table>
				</td>
			  </tr>
			</table>
			<div class="">
			  <a  onclick="document.location.href='../dashboard/';" name="next" tabindex="3" class="theme-btn line-button-two mt-35">Go to dashboard</a>
			</div>
		</div>
    <!--  contents area end  -->
	</div>
</br></br>
<center>&copy <?php echo date('Y');?> - Deprixa 3.3.0.1 All Rights Reserved</center>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<!-- jQuery -->
<script src="<?php SITEURL ?>../assets/vendor/jquery.2.2.3.min.js"></script>
<!-- Popper js -->
<script src="<?php SITEURL ?>../assets/vendor/popper.js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="<?php SITEURL ?>../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- menu  -->
<script src="<?php SITEURL ?>../assets/vendor/mega-menu/assets/js/custom.js"></script>
<!-- AOS js -->
<script src="<?php SITEURL ?>../assets/vendor/aos-next/dist/aos.js"></script>
<!-- WOW js -->
<script src="<?php SITEURL ?>../assets/vendor/WOW-master/dist/wow.min.js"></script>
<!-- js ui -->
<script src="<?php SITEURL ?>../assets/vendor/jquery-ui/jquery-ui.min.js"></script>
<!-- Select js -->
<script src="<?php SITEURL ?>../assets/vendor/selectize.js/selectize.min.js"></script>
<!-- owl.carousel -->
<script src="<?php SITEURL ?>../assets/vendor/owl-carousel/owl.carousel.min.js"></script>
<!-- ajaxchimp -->
<script src="<?php SITEURL ?>../assets/vendor/ajaxchimp/jquery.ajaxchimp.min.js"></script>

<!-- Theme js -->
<script src="<?php SITEURL ?>../assets/js/theme.js"></script>
