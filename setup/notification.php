<?php 
	$installed_on = $hostname;
	$installed_email = $site_email;
	$installed_url = $url;
	$admin_email = 'support@jaom.info';
		  $headers  = 'MIME-Version: 1.0' . "\r\n";
		  $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	$header .= 'From: Deprixa Pro v3.3.0.1 <admin@'.$installed_on.'>' . '\r\n';
	$subject = 'Deprixa Pro v3.3.0.1 Installation Notification';
	$message = 'Hi admin, Deprixa Pro v3.2.7.3 installed on '.$installed_on.' Domain. Email '.$installed_email.', URL '.$installed_url.'';
	mail($admin_email, $subject, $message, $header);