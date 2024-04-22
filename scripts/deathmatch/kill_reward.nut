/*

File: kill_reward.nut

Description: Bonus money for each kill.

*/

local killReward = 500;
local deathMoney = 250;

function onPlayerKill(killer, player, reason, bodypart) {
    killer.IncCash(killReward);
    player.DecCash(deathMoney);
}