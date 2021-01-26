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
<?php
	define("_VALID_PHP", true);
	require_once("functions.php");
  
  
	session_start();
  
	$msg = '';
  
	error_reporting(E_ALL);
	define("CMS_DS", DIRECTORY_SEPARATOR);
	define("BASE", dirname(__FILE__));
	define("DDPBASE", str_replace('setup', '', BASE));
  
	$script_path = str_replace('/setup', '', dirname($_SERVER['SCRIPT_NAME']));
  
	$_SERVER['REQUEST_TIME'] = time();
  
	$step = !isset($_GET['step']) ? 0 : (int)$_GET['step'];
  
	if (isset($_POST['db_action'])) {
      $err = false;
      
      if (!$_POST['dbhost'])
          $err[] = 1;
      
      if (!$_POST['dbuser'])
          $err[] = 2;
      
      if (!$_POST['dbname'])
          $err[] = 3;
      
      if (!$_POST['admin_username'])
          $err[] = 4;
      
      if (!$_POST['admin_password'])
          $err[] = 5;
      
      if ($_POST['admin_password'] != $_POST['admin_password2'])
          $err[] = 6;
      
      if (!$_POST['site_email'])
          $err[] = 7;
      
      if (!$err) {
          $link = mysqli_connect($_POST['dbhost'], $_POST['dbuser'], $_POST['dbpwd']);
          
          $error = false;
          
          if (!$link) {
              $error = true;
              $msg = 'Could not connect to MySQL server: ' . mysqli_error($link) . '<br />';
          }
          
          if (!mysqli_select_db($link, $_POST['dbname'])) {
              $error = true;
              $msg .= 'Could not select database ' . sanitize($_POST['dbname']) . ': ' . mysqli_error($link);
          }

          /** Writing to database **/
          if (!$error) {
              mysqli_query($link, "CREATE DATABASE `" . $_POST['dbname'] . "`;");
              mysqli_select_db($link, $_POST['dbname']);
              
              $success = true;
              parse_mysql_dump("sql/structure.sql", $link);
              
              if ($success)
                  writeConfigFile($_POST['dbhost'], $_POST['dbuser'], $_POST['dbpwd'], $_POST['dbname']);
			  
			  if ($success)
                  writesConfigFile($_POST['dbhost'], $_POST['dbuser'], $_POST['dbpwd'], $_POST['dbname']);
              
              if ($script_path == "/")
                  $script_path = "";
          }
		  
          $serverhost =  $_SERVER['HTTP_HOST'];
			if(preg_match('/www/', $serverhost))
			{
			$hostname = str_replace('www.', '', $serverhost);
			}
			else
			{
			$hostname = $serverhost;
			}
          
          $user = (isset($_POST['admin_username'])) ? $_POST['admin_username'] : "";
          $pass = (isset($_POST['admin_password'])) ? sanitize($_POST['admin_password']) : "";
          $url = (isset($_POST['site_url'])) ? $_POST['site_url'] : "";
          $sitename = (isset($_POST['site_name'])) ? $_POST['site_name'] : "";
          $site_email = (isset($_POST['site_email'])) ? $_POST['site_email'] : "";
          
          mysqli_query($link, "INSERT INTO `users` (id,username,password,email,fname, lname, created,userlevel,active)
        VALUES ('1','" . sanitize($user) . "','" . md5($pass) . "','" . sanitize($site_email) . "','JAOM', 'WEB',NOW(),'9','y')");
          
          mysqli_query($link, "UPDATE `settings` SET 
		  site_name = '" . sanitize($sitename) . "', 
		  site_url = '" . sanitize($url) . "', 
		  site_email = '" . sanitize($site_email) . "'");
          
          mysqli_close($link);
          
          if (!$error) {
              if (!file_exists("../lib/config.inc.php")) {
                  cmsHeader();
				  include("templates/finish.tpl.php");
				  include("notification.php");
                  cmsFooter();
                  exit;
              }
          }
      }
	}
  
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DEPRIXA -  Integrated Web system | Installer</title>
    <link rel="shortcut icon" type="image/png" href="ui/favicon.png">
    <link href="ui/css/bootstrap.min.css" rel="stylesheet">
    <link type='text/css' href='ui/css/style.css' rel='stylesheet'/>

</head>
<body style='background-color: #FFF;'>
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
		<!--  contents area start  -->
		<div class="col-md-12">
		   <hr>
			<?php
			  if (!$step)
				  : clearstatcache();
			  
			  include("templates/pre_install.tpl.php");
			  elseif ($step == 1)
				  : 
				  include("templates/license.tpl.php");
			  elseif ($step == '2')
				  : 
			  include("templates/configuration.tpl.php");
			  
			  else
				  : echo 'Incorrect step. Please follow installation instructions.';
			  endif;
			?>
		</div>
    <!--  contents area end  -->
	</div>
</br></br>
<center>&copy <?php echo date('Y');?> - Deprixa 3.3.0.1 All Rights Reserved</center>
<br><br>
<center><a href="mailto:support@jaom.info?subject=Installation Deprixa pro or license help !!&body=Hi JAOMWEB team, I need help with the installation."><b>Need Help?</b></a></center>
<script src="ui/js/jquery-1.10.2.js"></script>
<script src="ui/js/bootstrap.min.js"></script>
<?php

      global $err;    
      echo '<script type="text/javascript">';
      
      if ($err) {
          $j = 0;
          foreach ($err as $key => $i) {
              if ($i > 0) {
                  $first = ($j > 0) ? $i : '';
                  echo "document.getElementById('err{$i}').style.display = 'block';\n";
                  echo "document.getElementById('t{$i}').style.background = '#FFD5D5';\n";
                  $j++;
              }
          }
          echo "document.getElementById('t{$err[0]}').focus();\n";
      }
      
      echo '</script>';
?>

</body>
</html>
