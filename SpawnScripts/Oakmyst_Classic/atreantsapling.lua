--[[
    Script Name    : SpawnScripts/Oakmyst_Classic/atreantsapling.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.19 01:10:30
    Script Purpose : 
                   : 
--]]
local QUEST_FROM_NEOLA = 228

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