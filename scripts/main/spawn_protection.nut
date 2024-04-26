function onPlayerSpawn(player)
{
    if(!playerData[player.ID].inRace || !playerData[player.ID].racingVehicle) {
        player.World = 32000;
        player.Immunity = 31;
        playerData[player.ID].spawnTimer = NewTimer("EndPlayerSpawnProtection", 3 * 1000, 1, player.ID);
    }
}