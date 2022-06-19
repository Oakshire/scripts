--[[
    Script Name    : SpawnScripts/ThunderingSteppes/HarbormasterStonebender.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.18 05:06:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "", "The Storm Breaker is currently in Butcherblock Mountains and is out for repairs.  Perhaps you can find another means of travel.", "shrug", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end