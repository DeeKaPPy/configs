<!--
TeamSpeak 3 Client Infoframe Template
Theme: style_info_pl v2.0
Zmodyfikował: Norczan (http://norczan.pl/)


#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3
#%%AVATAR_MAX_WIDTH%%48
#%%AVATAR_MAX_HEIGHT%%48
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
  .red {
    color: red;
  }
</style>

<div class="InfoFrame_Title" dir="LTR">
    <img src="%%?CLIENT_COUNTRY_IMAGE%%" alt="" title="%%CLIENT_COUNTRY_TOOLTIP%%" />
    &nbsp;
	&nbsp;
    <a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">%%CLIENT_NAME%%</a>
    &nbsp;
    <span class="InfoFrame_CustomNick" title="Custom Nickname">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>
</div>
<hr />
<table id="info">
  <tr><td class="label">Czas online:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
  <tr><td class="label">Unikalne ID:</td><td>%%CLIENT_UNIQUE_ID%%</td></tr>
  <tr><td class="label">ID:</td><td>%%CLIENT_ID%% / DatabaseID: %%CLIENT_DATABASE_ID%%</td></tr>
  <tr><td class="label">Opis:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
  <tr><td class="label">Modyfikacja glosu:</td><td class="red">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
  <tr><td class="label">Wersja TS:</td><td>%%CLIENT_VERSION%% %%CLIENT_VERSION_STATE%% na <img src="styles:/style_info_pl/media/%%CLIENT_PLATFORM%%.png" alt="" title="%%CLIENT_PLATFORM%%" /> %%CLIENT_PLATFORM%%</td></tr>
  <tr><td class="label">Suma połączeń:</td><td>%%CLIENT_TOTALCONNECTIONS%%</td></tr>
  <tr><td class="label">Pierwsze połączenie:</td><td>%%CLIENT_CREATED%%</td></tr>
  <tr><td class="label">Ostatnie połączenie:</td><td>%%CLIENT_LASTCONNECTED%%</td></tr>
  <tr><td class="label">Szukaj:</td><td><a href="http://ts3index.com/?page=searchclient&uid=%%CLIENT_UNIQUE_ID%%">[UID] TS3Index</a>   |   <a href="http://ts3index.com/?page=searchclient&nickname=%%CLIENT_NAME_PERCENT_ENCODED%%">[NICK] TS3Index</a></td></tr>
  <tr><td class="label">Lista Serwerów:</td><td><a href="http://www.gametracker.com/search/ts3/?">GameTracker</a>   |   <a href="http://ts3index.com/?page=serverlist">TS3Index</a></td></tr>
</table>

<table id="list">
  <tr><td class="space label"><img src="iconpath:16x16_permissions_server_groups.png" height="12" width="12" alt=""> Grupy serwerowe:</td></tr>
  <tr><td class="list">
    <div>%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</div>
  </td></tr>
  <tr><td class="space label"><img src="iconpath:16x16_permissions_channel_groups.png" height="12" width="12" alt=""> Grupy kanałowe:</td></tr>
  <tr><td class="list">
    <div>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</div>
  </td></tr>
  <tr><td class="red"><br />*** Client requested Talk Power at <b>%%?CLIENT_TALK_REQUEST_TIME%%</b>.</td></tr>
  <tr><td class="red">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
</table>

<table style="padding-top: 6px;">%%?PLUGIN_INFO_DATA%%</table>

