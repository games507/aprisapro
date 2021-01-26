
<div class="inner-content"><b id="complete">pre-installation check</b> &raquo; purchase-code verification &raquo; license &raquo; configuration &raquo; completed</div>
<h2 id="install">Pre-installation check</h2>
<table width="97%" cellpadding="0" cellspacing="0" style="margin: 0 10px 10px 10px;">
  <tr>
    <td colspan="2"><h3>Server configuration</h3></td>
  </tr>
  <tr>
    <td class="inner-content">
		<table width="100%">
			<tr>
			  <td class="elem">MySQLi version</td>
			  <td align="left"><?php echo function_exists('mysqli_connect') ? '<span class="yes">'.mysqli_get_client_info().'</span>' : '<span class="no">MySQLi 5.x or upper required</span>'; ?></td>
			</tr>
			<tr>
			  <td class="elem">PHP version</td>
			  <td align="left"><?php echo version_compare("5.3.0", PHP_VERSION, ">") ? '<span class="no">Not available</span>' : '<span class="yes">'.PHP_VERSION.'</span>';?></td>
			</tr>
			<tr>
			  <td class="arrows">MySQL support</td>
			  <td align="left"><?php echo function_exists('mysql_connect') ? '<span class="yes">Available</span>' : '<span class="no">Unavailable (required)</span>';?></td>
			</tr>
			<tr>
			  <td class="arrows">CURL extension</td>
			  <td align="left"><?php echo extension_loaded('curl') ? '<span class="yes">Available</span>' : '<span class="no">Unavailable (required)</span>';?></td>
			</tr>
			<tr>
			  <td class="arrows">GD extension</td>
			  <td align="left"><?php echo extension_loaded('gd') ? '<span class="yes">Available</span>' : '<span class="no">Unavailable (highly recommended)</span>';?></td>
			</tr>
			<tr>
			  <td class="arrows">Zlib compression</td>
			  <td align="left"><?php echo extension_loaded('zlib') ? '<span class="yes">Available</span>' : '<span class="no">Unavailable (highly recommended)</span>';?></td>
			</tr>
			<tr>
			  <td class="arrows">Mbstring extension</td>
			  <td align="left"><?php echo extension_loaded('mbstring') ? '<span class="yes">Available</span>' : '<span class="no">Unavailable (not required) </span>';?></td>
			</tr>
		</table>
	</td>
  </tr>
  <tr>
    <td colspan="2"><h3>Recommended Settings</h3></td>
  </tr>
  <tr>
    <td class="inner-content">
		<table width="100%">
			<tr style="font-weight: bold;">
			  <td style="width: 250px;">Directive</td>
			  <td>Recommended</td>
			  <td>Actual</td>
			</tr>
			<?php $php_recommended_settings = array(array ('File Uploads','file_uploads','ON'), array ('Magic Quotes GPC','magic_quotes_gpc','OFF'), array ('Register Globals','register_globals','OFF'));?>
			<?php foreach ($php_recommended_settings as $phprec):?>
			<tr>
			  <td><?php echo $phprec[0]; ?>:</td>
			  <td><?php echo $phprec[2]; ?>:</td>
			  <td><?php if ( getIniSettings($phprec[1]) == $phprec[2] ):?>
				<span class="yes">
				<?php else: ?>
				<span class="no">
				<?php endif;?>
				<?php echo getIniSettings($phprec[1]); ?> </span></td>
			</tr>
			<?php endforeach;?>
		</table>
	</td>
  </tr>
  <tr>
    <td colspan="2"><h3>Directory &amp; File Permissions</h3></td>
  </tr>
  <tr>
    
    <td class="inner-content">
		<table width="100%">
        <?php getWritableCell('lib');?>
        <?php getWritableCell('uploads');?>
		</table>
	</td>
  </tr>
</table>
<div class="">
  <button type="button" class="btn btn-default" onclick="document.location.href='install.php';" name="check">Check</button>
  &nbsp;&nbsp;
  <?php if ( PHP_VERSION == "7.0.0" ):?>
  <a class="arrows" style="font-weight: bold; color:red;"><font size=2>You must go to your server and change the php version to 5.6.38</font></a>
  <?php else: ?>
  <button type="button" class="btn btn-danger" onclick="document.location.href='install.php?step=1';" name="next" tabindex="3" >Next</button>
  <?php endif;?>
</div>