--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

-- Quest ID's
local QUEST_1 = 340 --142 --A Puppy for your potion--

-- Item ID's
local BOX_OF_ALCHEMY_COMPONENTS = 4537

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_1, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 and Message == "take the box" then
		SetStepComplete(Spawn, QUEST_1, 2)
		SummonItem(Spawn, BOX_OF_ALCHEMY_COMPONENTS)
	end
end