lb <- null;

function Script::ScriptLoad()
{
	Hud.RemoveFlags(HUD_FLAG_WANTED)
}

function Server::ServerData(stream) {
    local data = stream.ReadInt();

	if(data == 1) {
		local string = stream.ReadString();
		local x = ::GUI.GetScreenSize().X;
		local y = ::GUI.GetScreenSize().Y;
		lb <- ::GUILabel( ::VectorScreen( x.tofloat() * 0.80 ,y * 0.33 ), ::Colour( 255, 153, 255), string );
		lb.FontSize = (x / 48);
		lb.FontName="pricedown";
		lb.FontFlags = GUI_FFLAG_OUTLINE | GUI_FLAG_TEXT_SHADOW;
	}
	if(data == 2)
	{
		lb <- null;
	}
}
