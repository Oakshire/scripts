--[[
    Script Name    : SpawnScripts/Commonlands/aBlackshielddockofficer.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.17 05:04:03
    Script Purpose : 
                   : 
--]]

local QUEST = 409

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, QUEST) == 2 then
	SummonItem(Spawn, 2513, 1)
end
   end

function respawn(NPC)
	spawn(NPC)
end