/*

File: diepos.nut

Description: Allows players to spawn where they die for a more quick paced deathmatch.

*/

// Diepos will not work when there are this amount of players or more.
local maxPlayersForDiePos = 16;

function onPlayerKill(killer, player, r, b)
{
    playerData[player.ID].diePos = player.Pos;
}

function onPlayerSpawn(player)
{
    if(playerData[player.ID].spawnOnDeath && playerData[player.ID].diePos != null)
    {
        if(!GetPlayers() >= maxPlayersForDiePos) player.Pos = playerData[player.ID].diePos;
    }
}

function onPlayerCommand(player, cmd, text)
{
    switch(cmd.tolower())
    {
        case "diepos":
        {
            if(GetPlayers() >= maxPlayersForDiePos) {
                MessagePlayer(COLOR_RED + "Warning: Diepos feature is disabled when there are " + maxPlayersForDiePos + " players or more!", player);
                return;
            }
            if(playerData[player.ID].spawnOnDeath)
            {
                playerData[player.ID].spawnOnDeath = false;
                MessagePlayer(COLOR_BLUE + "Diepos disabled. You will not spawn where you get killed.", player);
            }
            else {
                playerData[player.ID].spawnOnDeath = true;
                MessagePlayer(COLOR_BLUE + "Diepos enabled. You will spawn where you get killed.", player);
            }
        }
    }
}

function onPlayerDeath(player, reason)
{
    playerData[player.ID].diePos = null;
}