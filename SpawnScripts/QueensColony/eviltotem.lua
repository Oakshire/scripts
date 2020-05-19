--[[
	Script Name		:	SpawnScripts/QueensColony/eviltotem.lua
	Script Purpose	:	Handles enabling/disabling the totems on the correct step as well as updates
	Script Author	:	Jabantiz
	Script Date		:	9/9/2016
	Script Notes	:	<special-instructions>
--]]

local TheSourceOfEvil = 164

function spawn(NPC)
	SetRequiredQuest(NPC, TheSourceOfEvil, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "destroy totem" then
		if HasQuest(Spawn, TheSourceOfEvil) and GetQuestStep(Spawn, TheSourceOfEvil) == 2 then
			AddStepProgress(Spawn, TheSourceOfEvil, 2, 1)
			Despawn(NPC)
		end
	end
end