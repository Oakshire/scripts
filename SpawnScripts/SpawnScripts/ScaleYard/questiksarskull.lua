	--[[
	Script Name	: IksarSkullFire.lua
	Script Purpose	: Iksar Skull Fire for quest 152
	Script Author	: Xanibunib
	Script Date	: 4.1.2009
	Script Notes	: <special-instructions>
--]]

-- Quest ID's
local QUEST_3 = 342 --152 --Paying homage to the past--

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_3, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, QUEST_3) and GetQuestStep(Spawn, QUEST_3) == 3 and Message == "place skulls" then
		--492 for fire
		SpawnSet(NPC, "visual_state", "492")
		AddTimer(NPC, 5000, "EndFire")
		
		SetStepComplete(Spawn, QUEST_3, 3)
	end
end

function EndFire(NPC)
	SpawnSet(NPC, "visual_state", "0")
end