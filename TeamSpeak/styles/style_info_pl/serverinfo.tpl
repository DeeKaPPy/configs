<!--
TeamSpeak 3 Server Infoframe Template
Theme: style_info_pl v2.0
Zmodyfikował: Norczan (http://norczan.pl/)
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
  .active {
    color: green;
    text-decoration: underline;
  }
  .inactive {
    color: gray;
    text-decoration: underline;
  }
  .red {
    color: red;
  }
</style>
<div class="InfoFrame_Title" dir="LTR">
    <img src="%%?SERVER_ICON%%" alt="
    <img src='iconpath:16x16_server_green.png' alt='' />
    %%?SERVER_ICON%%" title="Server Icon" />
    &nbsp;
    <a href="channelid://0" class="TextMessage_ServerLink">%%SERVER_NAME%%</a>
</div>
<hr />
<table id="info">
  <tr>
    <td class="label">Adres:</td>
    <td>%%SERVER_ADDRESS%%
		:%%?SERVER_PORT%%
	</td>
  </tr>
  <tr>
    <td class="label">Wersja:</td>
    <td>%%SERVER_VERSION%% postawiona na <img src="styles:/style_info_pl/media/%%SERVER_PLATFORM%%.png" alt="" title="%%SERVER_PLATFORM%%" /> %%SERVER_PLATFORM%%</td>
  </tr>
  <tr>
    <td class="label">Licencja:</td>
    <td>%%SERVER_LICENSE%%</td>
  </tr>
  <tr>
    <td class="label">Czas pracy serwera:</td>
    <td>%%SERVER_UPTIME%%</td>
  </tr>
  <tr>
    <td class="label">Liczba kanałów:</td>
    <td>%%SERVER_CHANNELS_ONLINE%%</td>
  </tr>
  <tr>
    <td class="label">Osób online:</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="red">-%%?SERVER_RESERVED_SLOTS%% zarezerwowane</span>)</td>
  </tr>
  <tr title="Suma połączeń Query z serwerem wynosi: %%SERVER_QUERY_CLIENT_CONNECTIONS%%">
    <td class="label">Query online:</td>
    <td>%%SERVER_QUERYCLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</td>
  </tr>
    <tr title="Całkowita suma połączeń osób z serwerem">
    <td class="label">Suma połączeń:</td>
    <td>%%SERVER_CLIENT_CONNECTIONS%%</td>
  </tr>
	<tr><td class="label">Szukaj:</td><td class="infotext"><a href="http://ts3index.com/?lang=de&amp;page=searchserver&amp;servername=%%SERVER_NAME%%">TS3Index</a>  |  <a href="http://www.gametracker.com/search/?query=%%SERVER_ADDRESS%%
			:%%?SERVER_PORT%%
			">GameTracker</a></tr>
  %%?PLUGIN_INFO_DATA%%
  
</table>

<table id="list">
  <tr><td class="space">
    <img src="iconpath:16x16_check_update.png" height="12" width="12" alt="">
    &nbsp;
    <a class="inactive" href="%%?SERVER_REFRESH_INACTIVE%%">Refresh</a>
    <a class="active" href="%%?SERVER_REFRESH_ACTIVE%%">Refresh</a>
  </td></tr>
</table>