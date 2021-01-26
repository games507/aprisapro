<div class="inner-content"><a href="install.php">pre-installation check</a> &raquo; <a href="install.php?step=1">license</a> &raquo; <b>configuration</b> &raquo; completed</div>
<h2 id="install">General Configuration</h2>
<?php echo ($msg) ?  "<div class=\"error\"><p style='padding-left:15px;'>{$msg}</p></div>" : '';?>
</br>
<form action="install.php?step=2" method="post">
    <tr>
      <td colspan="2"><h3><b>MySQL database configuration</b></h3></td>
    </tr>
    <tr>
		<td class="inner-content">
			<table width="100%">
			  <tr>
				<td class="elem">MySQL Hostname:</td>
				<td align="left"><input type="text" name="dbhost" size="40" value="<?php echo isset($_POST['dbhost']) ? sanitize($_POST['dbhost']) : 'localhost'; ?>" id="t1" /></td>
				<td align="left"><div class="err" id="err1">Please input correct MySQL hostname.</div></td>
			  </tr>
			  <tr>
				<td class="elem">MySQL User Name:</td>
				<td align="left"><input type="text" name="dbuser" size="40" value="<?php echo isset($_POST['dbuser']) ? sanitize($_POST['dbuser']) : ''; ?>" id="t2" /></td>
				<td align="left"><div class="err" id="err2">Please input correct MySQL username.</div></td>
			  </tr>
			  <tr>
				<td class="elem">MySQL Password:</td>
				<td align="left"><input type="password" name="dbpwd" size="40" value="" /></td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td class="elem">MySQL Database Name:</td>
				<td align="left"><input type="text" name="dbname" size="40" value="<?php echo isset($_POST['dbname']) ? sanitize($_POST['dbname']) : ''; ?>" id="t3"/></td>
				<td align="left"><div class="err" id="err3">Please input correct database name.</div></td>
			  </tr>
			</table>
			<input type="hidden" name="db_action" id="db_action" value="1" />
		</td>
    </tr>
	</br>
    <tr>
      <td colspan="2"><h3>Common configuration</h3></td>
    </tr>
    <tr>
		<td class="inner-content">
		<table width="100%">
          <tr>
            <td class="elem"><div>URL:</div></td>
            <td align="left"><input type="text" name="site_url" value="http://<?php echo $_SERVER['SERVER_NAME'].$script_path;?>" size="40"/></td>
          </tr>
          <tr>
            <td class="elem"><div>Site Name:</div></td>
            <td align="left"><input type="text" name="site_name" placeholder="Your Site Name" size="40"/></td>
			<td align="left"><div class="err" id="err8">Entered site name do not match.</div></td>
          </tr>
          <tr>
            <td class="elem"><div>Site Email:</div></td>
            <td align="left"><input type="text" name="site_email" placeholder="site@mail.com" size="40"/></td>
			<td align="left"><div class="err" id="err7">Entered email do not match.</div></td>
          </tr>
        </table>
		</td>
    </tr>
	</br>
    <tr>
      <td colspan="2"><h3>Administrator configuration</h3></td>
    </tr>
    <tr>
		<td class="inner-content">
			<table width="100%">
			  <tr>
				<td class="elem">Admin Username:</td>
				<td align="left"><input type="text" name="admin_username" value="<?php echo isset($_POST['admin_username']) ? sanitize($_POST['admin_username']) : 'admin'; ?>" size="40" id="t4" /></td>
				<td align="left"><div class="err" id="err4">Please input correct admin username.</div></td>
			  </tr>
			  <tr>
				<td class="elem">Admin Password:</td>
				<td align="left"><input type="password" name="admin_password" value="<?php echo isset($_POST['admin_password']) ? sanitize($_POST['admin_password']) : ''; ?>" size="40" id="t5" /></td>
				<td align="left"><div class="err" id="err5">Please input password.</div></td>
			  </tr>
			  <tr>
				<td class="elem">Admin Password[confirm]:</td>
				<td align="left"><input type="password" name="admin_password2" value="" size="40" id="t6" /></td>
				<td align="left"><div class="err" id="err6">Entered passwords do not match.</div></td>
			  </tr>
			</table>
		</td>
    </tr>
    <br>
	<center><p><b>Database creation may take some time, please don´t refresh</b></p></center>
	<br>
  <div class="">
    <button class="btn btn-danger"  type="submit" name="next">Create</button>
  </div>
</form>
