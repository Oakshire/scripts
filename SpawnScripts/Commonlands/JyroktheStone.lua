--[[
    Script Name    : SpawnScripts/Commonlands/JyroktheStone.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.04 09:06:52
    Script Purpose : 
                   : 
--]]

local AnOrcishTrinket = 5254

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
if HasQuest(Spawn, AnOrcishTrinket) or HasCompletedQuest(Spawn, AnOrcishTrinket) then
RemoveLootItem(NPC, 6282)
end
    end