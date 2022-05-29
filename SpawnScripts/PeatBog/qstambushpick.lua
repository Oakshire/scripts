--[[
    Script Name    : SpawnScripts/PeatBog/qstambushpick.lua
    Script Author  : Shatou
    Script Date    : 2020.01.08 08:01:15
    Script Purpose : 
                   : 
--]]

local AMBUSHED_QUEST_ID = 509

function spawn(NPC)
    
SetRequiredQuest(NPC, AMBUSHED_QUEST_ID, 2, 1,0,0)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, AMBUSHED_QUEST_ID) then
			if Message == "inspect" then
				SetStepComplete(Spawn, AMBUSHED_QUEST_ID, 2)
		end
	end
end