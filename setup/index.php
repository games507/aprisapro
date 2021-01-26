<?php
// *************************************************************************
// *                                                                       *
// * DEPRIXA -  Integrated Web system                                      *
// * Copyright (c) JAOMWEB. All Rights Reserved                            *
// *                                                                       *
// *************************************************************************
// *                                                                       *
// * Email: osorio2380@yahoo.es                                            *
// * Website: http://www.jaom.info                                         *
// *                                                                       *
// *************************************************************************
// *                                                                       *
// * This software is furnished under a license and may be used and copied *
// * only  in  accordance  with  the  terms  of such  license and with the *
// * inclusion of the above copyright notice.                              *
// * If you Purchased from Codecanyon, Please read the full License from   *
// * here- http://codecanyon.net/licenses/standard                         *
// *                                                                       *
// *************************************************************************
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DEPRIXA -  Integrated Web system | Installer</title>
    <link rel="shortcut icon" type="image/png" href="ui/favicon.png">
    <link href="ui/theme/deprixa/css/bootstrap.min.css" rel="stylesheet">
    <link href="ui/theme/deprixa/lib/fa/css/font-awesome.min.css" rel="stylesheet">
    <link href="ui/theme/deprixa/lib/icheck/skins/all.css" rel="stylesheet">
    <link href="ui/lib/css/animate.css" rel="stylesheet">
    <link href="ui/lib/toggle/bootstrap-toggle.min.css" rel="stylesheet">
    <link href="ui/theme/deprixa/css/style.css?ver=2.0.1" rel="stylesheet">
    <link href="ui/theme/deprixa/css/component.css?ver=2.0.1" rel="stylesheet">
    <link href="ui/theme/deprixa/css/custom.css" rel="stylesheet">
    <link href="ui/lib/icons/css/deprixa_icons.css" rel="stylesheet">
    <link href="ui/theme/deprixa/css/material.css" rel="stylesheet">
    <link type='text/css' href='style.css' rel='stylesheet'/>

</head>
<body style='background-color: #FBFBFB;'>
<div id='main-container'>
    <div class='header'>
            <!-- navbar header -->
      <div class="navbar-header bg-dark">
        <button class="pull-right visible-xs dk" ui-toggle="show" target=".navbar-collapse">
          <i class="glyphicon glyphicon-cog"></i>
        </button>
        <button class="pull-right visible-xs" ui-toggle="off-screen" target=".app-aside" ui-scroll="app">
          <i class="glyphicon glyphicon-align-justify"></i>
        </button>
        <!-- brand -->
        <a href="index.php" class="navbar-brand text-lt">
          <a href class="navbar-brand block"><span><img src="ui/logo.png" height="39" width="190"></span></a>
		  
        <!-- / brand -->
      </div>
      <!-- / navbar header -->

    </div>
	</br></br>
    <!--  contents area start  -->
    <div class="row">
        <div class="col-md-12">
		 <hr>
			<div class="table-responsive">
				<div class="">
					<div class="col-lg-12 col-md-12">
					<?php
						if (!file_exists("../lib/config.ini.php")) {
							  if (file_exists("install.php")) {
								  header("Location: install.php");
							  } else {
								  die("<div style='text-align:center'>" 
									  . "<span style='padding: 5px; border: 1px solid #999; background-color:#EFEFEF;" 
									  . "font-family: Verdana; font-size: 11px; margin-left:auto; margin-right:auto; display:inline-block'>" 
									  . "<b>Attention:</b>The configuration file is missing and a new installation cannot be started because the install file cannot be located</span></div>");
							  }
						  } elseif (file_exists("update.php")) {
							  header("Location: update.php");
						  } else {
							  die("<div class='alert alert-warning'>" 
								  . "<button type='button' class='close' data-dismiss='alert' aria-label='Close'> <span aria-hidden='true'>&times;</span> </button>" 
								  . "<h3 class='text-warning'><i class='fa fa-exclamation-triangle'></i> Warning</h3> <b>Attention:</b> The file config.ini.php already exists!<br>If you want to reinstall Deprixa Pro you must first delete the config.ini.php</div>");
						  }
					?>
					</div>
				</div>
			</div>
		</div>
	</div>

    <!--  contents area end  -->
</div>
</br></br>
<center>&copy <?php echo date('Y');?> - Deprixa 3.3.0.1 All Rights Reserved</center>
<script src="ui/theme/deprixa/js/jquery-1.10.2.js"></script>
<script src="ui/theme/deprixa/js/bootstrap.min.js"></script>
<script src="ui/lib/blockui.js"></script>

</body>
</html>