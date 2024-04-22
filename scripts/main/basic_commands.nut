function onPlayerCommand(player, cmd, text)
{
    switch(cmd.tolower())
    {
        case "fps":
        case "ping":
        {
            if(!text) {
                MessagePlayer(COLOR_GRAY + "Your FPS: " + COLOR_WHITE + player.FPS + COLOR_GRAY + " Your ping: " + COLOR_WHITE + player.Ping, player);
            } 
            else 
            {
                local plr = GetPlayer(text)
                if(plr)
                {   
                    MessagePlayer(COLOR_GRAY + plr.Name +"'s FPS: " + COLOR_WHITE + plr.FPS + COLOR_GRAY + " ping: " + COLOR_WHITE + plr.Ping, player );
                } else MessagePlayer(COLOR_RED + "Error: Player not found!", player);
            }
            break;
        }
        case "report":
        {
            if(text) {
                if(NumTok(text, " ") >= 2)
                {
                    local targetplr = GetPlayer(GetTok(text, " ", 1));
                    local reason = GetTok(text, " ", 2 NumTok(text, " "));
                    if(targetplr)
                    {
                        StaffChat("Server", player.Name + " has reported " + targetplr.Name + " reason: " + reason );
                        MessagePlayer(COLOR_GREEN + "The report has been sent to all admins in game, thank you for reporting.", player);
                    }
                    else MessagePlayer(COLOR_RED + "Target player not found!", player);
                }
                else MessagePlayer(COLOR_RED + "Corect usage: /report <player> <reason>", player);
            } else MessagePlayer(COLOR_RED + "Corect usage: /report <player> <reason>", player);
            break;
        }
        case "admin":
        case "admins":
        {
            local playercount = 0;
            local playerlist = "";
            for(local i = 0; i < GetMaxPlayers(); ++i) {
                local plr = GetPlayer(i)
                if(plr) {
                    if(playerData[i].adminLevel >= 1) {
                        playerlist += plr.Name + " (Level: " + playerData[plr.ID].adminLevel + ") ";
                        ++playercount;
                    }
                } 
            } 
            if(playercount == 0) 
            {
                MessagePlayer(COLOR_RED + "No admins online!", player)
                return;
            }
            MessagePlayer(COLOR_BLUE + "Admins online (" + playercount + "): " + COLOR_WHITE + playerlist, player);
            break;
        }
    }
}