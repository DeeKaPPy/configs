<!--
TeamSpeak 3 Server Infoframe Template (DE)
 
The replaceable variables are embedded in "%%" like %%SERVER_NAME%%. At this time you can also use 
%%?SERVER_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Replacable variables for server:
SERVER_NAME
SERVER_VERSION
SERVER_PLATFORM
SERVER_CLIENTS_ONLINE
SERVER_QUERYCLIENTS_ONLINE
SERVER_CHANNELS_ONLINE
SERVER_UPTIME
SERVER_CLIENT_CONNECTIONS
SERVER_QUERY_CLIENT_CONNECTIONS
SERVER_ADDRESS
SERVER_PORT
SERVER_ICON
SERVER_LICENSE
PLUGIN_INFO_DATA
SERVER_MAXCLIENTS
SERVER_NO_RESERVED_SLOTS
SERVER_RESERVED_SLOTS
SERVER_REFRESH_INACTIVE
SERVER_REFRESH_ACTIVE
TR_SERVER_NICKNAMES
SERVER_NICKNAMES
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

<table id="info">
  <tr>
    <td class="label">Name:</td><td>%%SERVER_NAME%%</td></tr>
  <tr><td class="label">Adresse:</td><td>%%SERVER_ADDRESS%%:%%?SERVER_PORT%%</td></tr>
  <tr><td class="Label"><b>Server Nicknamen:</b></td><td>%%?SERVER_NICKNAMES%%</td></tr>
 <tr><td class="label">Version:</td><td>%%SERVER_VERSION%% auf <img src="styles:/default_extended/media/%%SERVER_PLATFORM%%.png" alt="" title="%%SERVER_PLATFORM%%" /></td></tr>
  <tr><td class="label">Lizenz:</td><td>%%SERVER_LICENSE%%</td></tr>
  <tr><td class="label">Online seit:</td><td>%%SERVER_UPTIME%%</td></tr>
  <tr><td class="label">Aktuelle Channel:</td> <td>%%SERVER_CHANNELS_ONLINE%%</td></tr>
  <tr title="Client Verbindungen Gesamt: %%SERVER_CLIENT_CONNECTIONS%%">
    <td class="label">Aktuelle Clients:</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="red">-%%?SERVER_RESERVED_SLOTS%% reserviert</span>)</td>
  </tr>
  <tr title="ServerQuery Verbindungen Gesamt: %%SERVER_QUERY_CLIENT_CONNECTIONS%%">
    <td class="label">Aktuelle Queries:</td>
    <td>%%SERVER_QUERYCLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</td>
  </tr>
  %%?PLUGIN_INFO_DATA%%
</table>

<table id="list">
  <tr><td class="space">
    <img src="iconpath:REFRESH" alt="">
    &nbsp;
    <a class="inactive" href="%%?SERVER_REFRESH_INACTIVE%%">Aktualisieren</a>
    <a class="active" href="%%?SERVER_REFRESH_ACTIVE%%">Aktualisieren</a>
  </td></tr>
</table>
