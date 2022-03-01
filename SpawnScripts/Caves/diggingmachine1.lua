--[[
    Script Name    : SpawnScripts/Caves/diggingmachine1.lua
    Script Author  : Shatou
    Script Date    : 2020.01.05 07:01:52
    Script Purpose : 
                   : 
--]]

local DESTROYING_THE_FOUNDATION_QUEST_ID = 497

function spawn(NPC)

end

function casted_on(NPC, Spawn, Message)

	--[[TODO: Box NEEDS TO EXPLODE AND BE CHANGED DRAMATICALLY]]--
	if HasQuest(Spawn, DESTROYING_THE_FOUNDATION_QUEST_ID) then
		if Message == "Place Explosives" then
			AddStepProgress(Spawn, DESTROYING_THE_FOUNDATION_QUEST_ID, 1, 1)
		end
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

