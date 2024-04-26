/*

File: messages.nut

Description: Random messages to help players and give information about the game/server.

*/

messages <- 
[
    "Having low health? Go to a hospital or dispensary and heal yourself with /heal.",
    "Out of money? You can use health pickups for a slower heal!",
    "Complete Unique Stunt Jumps to win prizes!",
    "Have a look at the rules by /rules before playing.",
    "Toggle your vehicle's light with 2 key.",
    "Visit Ammu-Nation to buy special weapons!",
    "Set your choices of weapons on spawn with /spawnwep",
    "Use /setconfig tag_maxdist 300 for a further nametag distance for sniping!",
    "Use /setconfig game_sensitivity_ratio 0.5 to slower your y axis sensitivity for m4 combats!",
    "Don't forget to add us to your favorites!",
];

function RandomMessage()
{
    Message(COLOR_ORANGE + "-> "+ messages[random(0, messages.len() - 1)]);
}

NewTimer( "RandomMessage", 75 * 1000, 0);