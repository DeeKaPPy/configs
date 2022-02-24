<!--
TeamSpeak 3 Channel Infoframe Template
Theme: style_info_pl v2.0
Zmodyfikował: Norczan (http://norczan.pl/)

#%%IMAGES_MAX_WIDTH%%256
#%%IMAGES_MAX_HEIGHT%%256
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
    <img src="%%?CHANNEL_ICON%%" alt="
    <img src='iconpath:16x16_channel_green.png' alt='' />
    %%?CHANNEL_ICON%%" title="Channel Icon" />
    &nbsp;
    <a href="channelid://%%CHANNEL_ID%%" class="TextMessage_ChannelLink">%%CHANNEL_NAME%%</a>
</div>

<hr />
<table id="info">
  <tr><td class="label">Temat:</td><td>%%?CHANNEL_TOPIC%%</td></tr>
  <tr><td class="label">ID kanału:</td><td>%%CHANNEL_ID%%</td></tr>
  <tr><td class="label">Rodzaj:</td><td class="blue" title="Permanent - kanał permanentny | Temporary - kanał znika po wyjściu wszystkich osób">%%?CHANNEL_FLAGS%%</td></tr>
  <tr>
    <td class="label">Kodek i jakość:</td>
    <td>%%CHANNEL_CODEC%% - %%CHANNEL_CODEC_QUALITY%% (bitrate ~ %%CHANNEL_CODEC_BITRATE%%/s)</td>
  </tr>
  <tr><td class="label">Osób na kanale:</td><td><b><a class="blue">%%?CHANNEL_CLIENTS_COUNT%%</a></b> &nbsp;&nbsp;  Limit: %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
  <tr><td class="label">Status:</td><td><a title="Subscribed - widzisz osoby będące na kanale | Not subscribed - nie widzisz osób na tym kanale">%%CHANNEL_SUBSCRIPTION%%</a> <b>|</b> <a title="Unencrypted - rozmowy nie szyfrowane | Encrypted - szyfrowane">%%CHANNEL_VOICE_DATA_ENCRYPTED%%</a></td></tr>
  <tr><td class="label">Moc mówienia:</td><td class="red">%%?CHANNEL_NEEDED_TALK_POWER%%<img src="styles:/style_info_pl/media/help.png" height="13" width="15" alt="" title="Potrzebna moc do mówienia to %%?CHANNEL_NEEDED_TALK_POWER%%, skontaktuj się z administratorem serwera lub moderatorem kanału." /></td></tr>
  %%?PLUGIN_INFO_DATA%%
  </table>
<p style="margin-top: 4px; color:darkRed;">Kanał zostanie usunięty za %%?TEMP_CHANNEL_TIME_TO_DELETE%%.</p>
<table id="list" width=100%>
  <tr><td class="space label"><img src="iconpath:16x16_change_nickname.png" height="12" width="12" alt=""> Opis kanału:</td></tr><tr><td class="list"><br />%%?CHANNEL_DESCRIPTION%%</td></tr>
</table>
