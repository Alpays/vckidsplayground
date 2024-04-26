/*

File: classes.nut

Description: Adding choosable characters to the spawn screen.

*/

function onScriptLoad() 
{
    SetSpawnPlayerPos(-1482.51, -1005, 18.50);
    SetSpawnCameraPos(-1478,-998,18.50);
    SetSpawnCameraLook(-1482, -1005, 18.50);

    AddClass(0, RGB(255, 255, 255), 83, Vector(-1169, -615, 11.82), 134, 0,0,0,0,0,0) // Cuban
    AddClass(0, RGB(255, 255, 255), 84, Vector(-1169, -615, 11.82), 134, 0,0,0,0,0,0) // Cuban
    AddClass(0, RGB(255, 255, 255), 85, Vector(-1063, -3.99, 11.38), -3.11, 0,0,0,0,0,0) // Haitian
    AddClass(0, RGB(255, 255, 255), 86, Vector(-1063, -3.99, 11.38), -3.11, 0,0,0,0,0,0) // Haitian
    AddClass(0, RGB(255, 255, 255), 97, Vector(-871, -682, 11.23), -0.64, 0,0,0,0,0,0) // Undercover Cop
    AddClass(0, RGB(255, 255, 255), 100, Vector(-871, -682, 11.23), -0.64, 0,0,0,0,0,0) // Undercover Cop
    AddClass(0, RGB(255, 255, 255), 6, Vector(-696, 765, 11.08), -1.87, 0,0,0,0,0,0) // Firefighter
    AddClass(0, RGB(255, 255, 255), 29, Vector(-664, -1369, 11.07), 42.12, 0,0,0,0,0,0) // Viceport worker
    AddClass(0, RGB(255, 255, 255), 78, Vector(287, -979, 11.07), 157, 0,0,0,0,0,0) // Skater
    AddClass(0, RGB(255, 255, 255), 0, Vector(219, -1274, 12.070), 255, 0,0,0,0,0,0) // Tommy Vercetti
    AddClass(0, RGB(255, 255, 255), 68, Vector(157, -1516, 10.990), 239, 0,0,0,0,0,0) // Businessman
    AddClass(0, RGB(255, 255, 255), 51, Vector(137, -1231, 31.99), 0.12, 0,0,0,0,0,0) // Guy with sunglasses
    AddClass(0, RGB(255, 255, 255), 1, Vector(-658, 762, 11.60), 123, 0,0,0,0,0,0) // Police
    AddClass(0, RGB(255, 255, 255), 3, Vector(-658, 762, 11.60), 123, 0,0,0,0,0,0) // Police
    AddClass(0, RGB(255, 255, 255), 87, Vector(75, 1107, 18.75), 181, 0,0,0,0,0,0) // Street wannabes
    AddClass(0, RGB(255, 255, 255), 48, Vector(82, 1082, 18.50), 89, 0,0,0,0,0,0) // Street wannabes
    AddClass(0, RGB(255, 255, 255), 93, Vector(-598, 656, 11.07), 123, 0,0,0,0,0,0) // Bikers
    AddClass(0, RGB(255, 255, 255), 94, Vector(-598, 656, 11.07), 123, 0,0,0,0,0,0) // Bikers
}

function onPlayerRequestClass(player, classid, team, skin)
{
    player.Angle = -0.8;
}