--[[
	Script Name	: SpawnScripts/FrostfangSea/JaisenTutwhittle.lua
	Script Purpose	: Jaisen Tutwhittle
	Script Author	: theFoof
	Script Date	: 2013.05.21
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC)
    PlayFlavor(NPC, "", "I will be so relieved when we make it to New Halas safely!", "nod", 1689589577, 4560189, Spawn)
    FaceTarget(NPC, Spawn)
end
