/*

File: game_settings.nut

Description: Sets the server rules.

*/

function onScriptLoad() {
    SetServerName("[0.4] Vice City Kids Playground");
    SetGameModeName("VCKP Freeroam (Squirrel)");

    SetCrouchEnabled(false);
    SetWallglitch(false);
    SetVehiclesForcedRespawnHeight(1000);
    SetTimeRate(1000);
    SetTaxiBoostJump(true);
    SetJoinMessages(false);
    SetDeathMessages(false);
    SetDrivebyEnabled(false);

}