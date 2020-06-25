--[[
    Script Name    : SpawnScripts/OutpostOverlord/aTunarianMourner.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.20 10:05:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
         EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
         spawn(NPC)
end

function EmoteLoop (NPC)
        Say(NPC, "Your lives will not be forgotten!")
	PlayAnimation(NPC, 10844)
	AddTimer(NPC, 15000, "EmoteLoop")
end
 
