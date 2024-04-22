/*

File: kill_messages.nut

Description: Custom kill messages.

*/

function getKillMessage(weapon)
{
    switch(getWeaponType(weapon))
    {
        case "Fist":       return "fisted";
        case "Sniper":     return "sniped";
        default:           return "killed";
    }
}

function onPlayerKill(killer, player, reason, bodypart) {
    Message(COLOR_BLUE + killer.Name + COLOR_WHITE + " " + getKillMessage(reason) + " " + COLOR_BLUE + player.Name + COLOR_WHITE + " (" + GetWeaponName(reason) + ") (" + getBodypartName(bodypart) + ")" );
}

function onPlayerDeath(player, reason)
{
    switch(reason)
    {
        case 51: Message(COLOR_BLUE + player.Name + COLOR_WHITE + " exploded."); break;
        case 70: Message(COLOR_BLUE + player.Name + COLOR_WHITE + " commited suicide."); break;
        case 44: Message(COLOR_BLUE + player.Name + COLOR_WHITE + " fell."); break;
        case 43: Message(COLOR_BLUE + player.Name + COLOR_WHITE + " drowned."); break;
        case 31: Message(COLOR_BLUE + player.Name + COLOR_WHITE + " burned."); break;
        default: Message(COLOR_BLUE + player.Name + COLOR_WHITE + " died.");
    }    
}