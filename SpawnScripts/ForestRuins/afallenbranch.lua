--[[
    Script Name    : SpawnScripts/ForestRuins/afallenbranch.lua
    Script Author  : Shatou
    Script Date    : 2020.01.24 09:01:12
    Script Purpose : 
                   : 
--]]

local FAVORS_QUEST_ID = 521
local A_FALLEN_BRANCH_SOUTH_OUTSIDE = 566787
local A_FALLEN_BRANCH_NORTH_OUTSIDE = 1587456
local A_FALLEN_BRANCH_SOUTH_INSIDE = 1587457
local A_FALLEN_BRANCH_NORTH_INSIDE = 1587509

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, FAVORS_QUEST_ID) then
		if Message == "harvest" then
			if GetSpawnLocationID(NPC) == A_FALLEN_BRANCH_SOUTH_OUTSIDE then
				SetStepComplete(Spawn, FAVORS_QUEST_ID, 3)
			
			elseif GetSpawnLocationID(NPC) == A_FALLEN_BRANCH_NORTH_OUTSIDE then
				SetStepComplete(Spawn, FAVORS_QUEST_ID, 4)
				
			elseif GetSpawnLocationID(NPC) == A_FALLEN_BRANCH_SOUTH_INSIDE then
				SetStepComplete(Spawn, FAVORS_QUEST_ID, 5)
				
			elseif GetSpawnLocationID(NPC) == A_FALLEN_BRANCH_NORTH_INSIDE then
				SetStepComplete(Spawn, FAVORS_QUEST_ID, 6)
				
			end
		end
	end
end

