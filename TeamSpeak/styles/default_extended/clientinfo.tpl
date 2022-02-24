<!--
TeamSpeak 3 Client Infoframe Template

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "config/styles/" for default theme or in a sub folder named like an available 
theme (e.g. "config/styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

Options (remove the "#" to enable):
#%%AVATAR_MAX_WIDTH%%128
#%%AVATAR_MAX_HEIGHT%%128
#%%AVATAR_IMAGE_DONT_APPEND%%1
#%%STATUS_ICONS_DONT_APPEND%%1
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3
#%%CLIENT_SERVER_SHOW_MAX_BADGES%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_COUNTRY_IMAGE_SCALED
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_MYTEAMSPEAK_ID
CLIENT_TALK_POWER
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE ([Alpha|Beta|Stable])
CLIENT_VERSION_LONG
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AWAY
CLIENT_FLAG_BADGES
CLIENT_FLAG_INPUT_MUTED
CLIENT_FLAG_INPUT_HARDWARE_DISABLED
CLIENT_FLAG_OUTPUT_MUTED
CLIENT_FLAG_OUTPUT_HARDWARE_DISABLED
CLIENT_FLAG_LOCAL_MUTED
CLIENT_FLAG_RECORDING
CLIENT_FLAG_AVATAR
CLIENT_PATH_AVATAR
CLIENT_IGNORE_AVATAR
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_BADGE_NAME
CLIENT_BADGE_DESCRIPTION
CLIENT_BADGE_ICON_SMALL
CLIENT_BADGE_ICON_LARGE
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
CLIENT_SERVER_SHOW_MAX_BADGES
AVATAR_IMAGE_DONT_APPEND
STATUS_ICONS_DONT_APPEND
PLUGIN_INFO_DATA
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
-->

<style type="text/css">
  table#info { 
    border-collapse: collapse;
	border-spacing: 0px;
  }
  table#list {
    border-collapse: collapse;
    border-spacing: 0px;
    margin-bottom: 10px;
  }
  td {
    padding: 0px 4px 0px 1px;
  }
  td.label {
    font-weight: bold;
    white-space: nowrap;
  }
  td.space {
    padding-top: 6px;
  }
  td.list {
    padding: 0px 1px 0px 8px;
  }
  .blue {
    color: blue;
  }
  .green {
    color: green;
  }
  .red {
    color: red;
  }
  .small {
    font-size: 7pt;
  }
</style>

<table id="info">
  <tr>
    <td class="label">Nickname:</td>
    <td dir="LTR">
	  <a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" style="text-decoration: none; color: red;">%%CLIENT_NAME%%</a>&nbsp;
      <span class="blue" title="Custom Nickname">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>&nbsp;
	  <span class="small" title="Client ID">(%%CLIENT_ID%%)</span>&nbsp;
	   %%?CLIENT_COUNTRY_IMAGE_SCALED%%
    </td>
  </tr>
  <tr>
    <td class="label">Unique ID:</td>
    <td>%%CLIENT_UNIQUE_ID%%</td>
  </tr>
  <tr>
    <td class="label">Database ID:</td>
    <td>%%CLIENT_DATABASE_ID%%</td>
  </tr>
  <tr><td class="label">Description:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
  <tr><td class="label">Volume Modifier:</td><td class="red">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
  <tr>
    <td class="label">Version:</td>
    <td>%%CLIENT_VERSION%% %%CLIENT_VERSION_STATE%% on <img src="styles:/default_extended/media/%%CLIENT_PLATFORM%%.png" alt="" title="%%CLIENT_PLATFORM%%" /></td>
  </tr>
  <tr>
    <td class="label">Connections:</td>
    <td>%%CLIENT_TOTALCONNECTIONS%%</td>
  </tr>
  <tr>
    <td class="label">First Connected:</td>
    <td>%%CLIENT_CREATED%%</td>
  </tr>
  <tr>
    <td class="label">Online Since:</td>
    <td>%%CLIENT_CONNECTED_SINCE%%</td>
  </tr>
</table>

  <!-- begin client badges table -->
  
  %%??CLIENT_FLAG_BADGES%%<table class="InfoFrame_Table">
  %%??CLIENT_FLAG_BADGES%%  <tr>
  %%??CLIENT_FLAG_BADGES%%    <td colspan="%%CLIENT_FLAG_BADGES%%" class="Label Space-Top">%%TR_CLIENT_BADGE_SHOWCASE%%:</td>
  %%??CLIENT_FLAG_BADGES%%  </tr>
  %%??CLIENT_FLAG_BADGES%%  <tr>
  %%??CLIENT_FLAG_BADGES%%    <td class="Badge" title="<b>%%CLIENT_BADGE_NAME%%</b><br />%%CLIENT_BADGE_DESCRIPTION%%">%%CLIENT_BADGE_ICON_LARGE%%</td>
  %%??CLIENT_FLAG_BADGES%%  </tr>
  %%??CLIENT_FLAG_BADGES%%</table>
  
    <!-- begin permission info table -->

<table id="list">
  <tr><td class="space label"><img src="iconpath:16x16_permissions_server_groups.png" height="12" width="12" alt=""> Server Groups:</td></tr>
  <tr><td class="list">
    <div>%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</div>
  </td></tr>
  <tr><td class="space label"><img src="iconpath:16x16_permissions_channel_groups.png" height="12" width="12" alt=""> Channel Group:</td></tr>
  <tr><td class="list">
    <div>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</div>
  </td></tr>
  <tr><td class="red"><br />*** Client requested Talk Power at <b>%%?CLIENT_TALK_REQUEST_TIME%%</b>.</td></tr>
  <tr><td class="red">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
</table>

  <!-- begin plugin info table -->

<table style="padding-top: 6px;">%%?PLUGIN_INFO_DATA%%</table>
