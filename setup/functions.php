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
  if (!defined("_VALID_PHP"))
      die('Direct access to this location is not allowed.');
?>
<?php
  function getIniSettings($aSetting)
  {
	  $out = (ini_get($aSetting) == '1' ? 'ON' : 'OFF');
	  return $out;
  }

  function getWritableCell($aDir)
  {
	  echo '<tr>';
	  echo '<td class="elem">'.$aDir .CMS_DS.'</td>';
	  echo '<td align="left">';
	  echo is_writable(DDPBASE.$aDir) ? '<span class="yes">Writeable</span>' : '<span class="no">Unwriteable</span>';
	  echo '</td>';
	  echo '</tr>';
  }

  function sanitize($string, $trim = false)
  {
	$string = filter_var($string, FILTER_SANITIZE_STRING); 
	$string = trim($string);
	$string = stripslashes($string);
	$string = strip_tags($string);
	$string = str_replace(array('‘','’','“','”'), array("'","'",'"','"'), $string);
	if($trim)
	$string = substr($string, 0, $trim);
	
	return $string;
  }

  function parse_mysql_dump($filename, $dblink)
  {

      $templine = '';
      $lines = file($filename);
      foreach ($lines as $line_num => $line) {
          if (substr($line, 0, 2) != '--' && $line != '') {
              $templine .= $line;
              if (substr(trim($line), -1, 1) == ';') {
                  if (!mysqli_query($dblink, $templine)) {
                      $success = false;
                      $msg = "<div class=\"qerror\">'" . mysqli_errno($dblink) . " " . mysqli_errno($dblink) . "' during the following query:</div> 
					  <div class=\"query\">{$templine} </div>";
                  }
                  $templine = '';
              }

          }
      }
  }
  
  function writeConfigFile($host, $username, $password, $name)
  {
      
          $content = "<?php \n" 
		   . "\n"
		  . "\t // *************************************************************************\n"
		  . "\t // *                                                                       *\n"
		  . "\t	// * DEPRIXA -  Integrated Web system                                      *\n"
		  . "\t	// * Copyright (c) JAOMWEB. All Rights Reserved                            *\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// *************************************************************************\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// * Email: osorio2380@yahoo.es                                            *\n"
		  . "\t	// * Website: http://www.jaom.info                                         *\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// *************************************************************************\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// * This software is furnished under a license and may be used and copied *\n"
		  . "\t	// * only  in  accordance  with  the  terms  of such  license and with the *\n"
		  . "\t	// * inclusion of the above copyright notice.                              *\n"
		  . "\t	// * If you Purchased from Codecanyon, Please read the full License from   *\n"
		  . "\t	// * here- http://codecanyon.net/licenses/standard                         *\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// *************************************************************************\n"

		  . " \n" 
		  . "\t if (!defined(\"_VALID_PHP\")) \n"
		  . "     die('Direct access to this location is not allowed.');\n"
		  
		  . " \n" 
		  . "\t/** \n" 
		  . "\t* Database Constants - these constants refer to \n"
		  . "\t* the database configuration settings. \n"
		  . "\t*/\n"
		  . "\t define('DB_SERVER', '".$host."'); \n" 
		  . "\t define('DB_USER', '".$username."'); \n"  
		  . "\t define('DB_PASS', '".$password."'); \n"  
		  . "\t define('DB_DATABASE', '" . $name . "');\n" 

		  . " \n" 
		  . "\t/** \n" 
		  . "\t* Show MySql Errors. \n"
		  . "\t* Not recomended for live site. true/false \n"
		  . "\t*/\n"
		  . "\t define('DEBUG', false);\n"
		  . "?>";
      
      $confile = '../lib/config.ini.php';
      if (is_writable('../lib/')) {
          $handle = fopen($confile, 'w');
          fwrite($handle, $content);
          fclose($handle);
          $success = true;
      } else {
          $success = false;
      }
  }
  
  
    function writesConfigFile($host, $username, $password, $name)
  {
      
          $content = "<?php \n" 
		  . "\n"
		  . "\t // *************************************************************************\n"
		  . "\t // *                                                                       *\n"
		  . "\t	// * DEPRIXA -  Integrated Web system                                      *\n"
		  . "\t	// * Copyright (c) JAOMWEB. All Rights Reserved                            *\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// *************************************************************************\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// * Email: osorio2380@yahoo.es                                            *\n"
		  . "\t	// * Website: http://www.jaom.info                                         *\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// *************************************************************************\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// * This software is furnished under a license and may be used and copied *\n"
		  . "\t	// * only  in  accordance  with  the  terms  of such  license and with the *\n"
		  . "\t	// * inclusion of the above copyright notice.                              *\n"
		  . "\t	// * If you Purchased from Codecanyon, Please read the full License from   *\n"
		  . "\t	// * here- http://codecanyon.net/licenses/standard                         *\n"
		  . "\t	// *                                                                       *\n"
		  . "\t	// *************************************************************************\n"
		  
			. "\t	class Db { \n"
			. "\t	private \$servername = 	'".$host."';\n" 
			. "\t	private \$username = 	'".$username."';\n" 
			. "\t	private \$password = 	'".$password."';\n" 
			. "\t	private \$db = 			'". $name ."';\n" 

			. "\t	public function db() {\n" 
			. "\t			\$conn = new mysqli(\$this->servername, \$this->username, \$this->password, \$this->db);\n" 
			. "\t			if (\$conn->connect_error) {\n" 
			. "\t				die('Connection failed: ' . \$conn->connect_error);\n" 
			. "\t			}\n"
			. "\t			return \$conn;\n" 
			. "\t		}\n" 
			. "\t	}\n" 
		  . " \n" 
		  . "?>";
      
      $confile = '../lib/Dbpayment.php';
      if (is_writable('../lib/')) {
          $handle = fopen($confile, 'w');
          fwrite($handle, $content);
          fclose($handle);
          $success = true;
      } else {
          $success = false;
      }
  }

  
  function cmsHeader()
  {
      echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">';
      echo '<html xmlns="http://www.w3.org/1999/xhtml">';
  }
  
  function cmsFooter()
  {
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
  }
?>