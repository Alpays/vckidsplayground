/*

File: vehicle_controls.nut

Description: Adds keys to give the player control to the vehicle they're driving.

*/

vehicleTaxiLights <- BindKey(true, 0x31, 0, 0)  // 1 Key
vehicleLights <- BindKey(true, 0x32, 0, 0)      // 2 Key
flip <- BindKey(true, 0x58, 0, 0) // X Key

function onPlayerCommand(player, cmd, text)
{
    switch(cmd.tolower())
    {
        case "vehiclecontrols":
        case "vehcontrols":
        case "vc":
        {
            MessagePlayer(COLOR_YELLOW + "Vehicle controls: 1 - Toggle taxi light, 2 - Toggle vehicle light, X - Flip your vehicle (Requires $500)", player);
            break;
        }
    }
}

function onKeyUp(player, key)
{
    if(key == vehicleTaxiLights) {
        if(player.Vehicle) player.Vehicle.TaxiLight = !player.Vehicle.TaxiLight;
    }
    if(key == vehicleLights) {
        if(player.Vehicle) player.Vehicle.Lights = !player.Vehicle.Lights;
    }
    if(key == flip && !playerData[player.ID].modshop) {
        if(player.Vehicle)
        {
            if(player.Cash >= 500) {
                if(!playerData[player.ID].inRace) {
                    if(time() - playerData[player.ID].lastFlip >= 60)
                    {
                        playerData[player.ID].lastFlip = time();
                        MessagePlayer(COLOR_GRAY + "Flipped your vehicle for $500!", player);
                        player.DecCash(500);
                        local rot = player.Vehicle.Rotation;
                        player.Vehicle.Rotation = Quaternion( 0.0, 0.0, rot.z, rot.w );
                    }
                    else MessagePlayer(COLOR_RED + "You can flip your vehicle once a minute!", player);
                }
                else MessagePlayer(COLOR_RED + "You can't flip in races!", player);
            }
            else MessagePlayer(COLOR_RED + "You need $500 to flip your vehicle!", player);
        }
    }
}