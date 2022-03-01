--[[
	Script Name	: SpawnScripts/Oakmyst/atreantsapling.lua
	Script Purpose	: a treant sapling
	Script Author	: Scatman
	Script Date	: 2009.05.07
	Script Notes	: 
--]]

local QUEST_FROM_NEOLA = 211

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_NEOLA) and GetQuestStep(Spawn, QUEST_FROM_NEOLA) == 2 then
		AddConversationOption(conversation, "Sprinkle Smitelin's Excel-a-gro onto the sapling.", "Again")
	end
	AddConversationOption(conversation, "Farewell little shrub.")
	StartConversation(conversation, NPC, Spawn, "...")
end

-----------------------------------------------------------------------------------------------------------------------------------
--							QUEST FROM NEOLA
-----------------------------------------------------------------------------------------------------------------------------------

function Again(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_NEOLA, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Farewell little shrub.")
	StartConversation(conversation, NPC, Spawn, "...")
end