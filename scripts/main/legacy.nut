/*

File: legacy.nut

Description: Brings back some VC-MP 0.3z R2 stuff and some singleplayer ones that went missing in 0.4

*/

function CPlayer::SpawnSound()
{
    ::PlaySound( UniqueWorld , 367 , Pos );
    ::PlaySound( UniqueWorld , 368 , Pos );
    ::PlaySound( UniqueWorld , 369 , Pos );
}

function CPlayer::PickupSound()
{
    ::PlaySound( UniqueWorld , 361 , Pos );
    ::PlaySound( UniqueWorld , 362 , Pos );
    ::PlaySound( UniqueWorld , 363 , Pos );
}

function onPlayerDeath(player, reason) 
{
    Announce("~t~Wasted!", player, 5);
}

function onPlayerKill(killer, player, reason, bodypart) {
    Announce("~t~Wasted!", player, 5);
}

function onPlayerSpawn(player)
{
    player.SpawnSound();
}

function onPickupPickedUp(player, pickup)
{
    player.PickupSound();
}

function onCheckpointEntered(player, cp)
{
    if(playerData[player.ID].inRace) player.SpawnSound();
}