--[[
    Script Name    : SpawnScripts/Baubbleshire/TestingNPC.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.07 06:01:39
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 Say(NPC, "You are currently on step " .. GetQuestStep(Spawn, 5447))
end
