--[[
    Script Name    : SpawnScripts/ForestRuins/fallenrubble.lua
    Script Author  : Shatou
    Script Date    : 2020.01.24 08:01:12
    Script Purpose : 
                   : 
--]]

local FAVORS_QUEST_ID = 521

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, FAVORS_QUEST_ID) then
			if Message == "gather rubble" then
				AddStepProgress(Spawn, FAVORS_QUEST_ID, 2, 1)
				Despawn(NPC)
			end
	end
end