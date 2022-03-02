--[[
    Script Name    : SpawnScripts/ForestRuins/hiddentools.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.01 04:03:10
    Script Purpose : 
                   : 
--]]

local zone = GetZone(NPC)
local CACHES_QUEST_ID = 5492
local toolGuard = 1960098

function spawn(NPC)
    SetRequiredQuest(NPC, CACHES_QUEST_ID, 1, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, CACHES_QUEST_ID) then
			if Message == "Spinkle nullification powder" then
				AddStepProgress(Spawn, FAVORS_QUEST_ID, 1, 1)
				SetModelType(NPC,5210)
			    	SpawnMob(NPC, toolGuard)
			    	Attack(toolGuard, Spawn)
				AddTimer(NPC,15000,Despawn)
			end
	end
end