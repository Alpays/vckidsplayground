/*

File: health_pickups.nut

Description: Free healing points. A variety for healing places other than /heal in hospitals&dispensary.

*/

healthPickups <-
[
    [Vector(-571, 782, 22.87)],
    [Vector(-901, 803, 11.49)],
    [Vector(-1042, 77.2, 11.6)],
    [Vector(424, 89.6, 11.3)],
    [Vector(450, 1101, 192.0)],
    [Vector(-1192, -448, 10.94)],
    [Vector(10, 1101, 16.58)],
    [Vector(-370, -603, 10.36)],
    [Vector(-1140, -601, 11.6)],
    [Vector(-1049, -664, 11.7)],

    [Vector(-859, -353, 11.09)],
    [Vector(-1001, -1139, 14.86)],
    [Vector(100.2, -804, 10.46)],
    [Vector(-346, -542, 17.2)],
]

function onScriptLoad()
{
    for(local i = 0; i < healthPickups.len(); ++i) {
        local loc = healthPickups[i][0];
        CreatePickup( 366, 1, 5, loc.x, loc.y, loc.z, 255, true );
    }    
}