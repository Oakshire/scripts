--[[
	Script Name		:	SpawnScripts/FrostfangSea/discarded_sack.lua
	Script Purpose	:	the spawn "discarded sack"
	Script Author	:	theFoof
	Script Date		:	2013.8.11
	Script Notes	:	
--]]

local SometimesKnut = 84

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 100, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'search the discarded sack' then
		if GetQuestStep(Spawn, SometimesKnut) == 1 then
			conversation = CreateConversation()
			AddConversationOption(conversation, "But it's not in the sack any more.", "GrizChat_2")
			StartDialogConversation(conversation, 3, NPC, Spawn, "I smell our prey here.  It spent much time bedded down at this location.")
		end
	end
end

function GrizChat_2(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Where to next, Griz?", "GrizChat3")
	StartDialogConversation(conversation, 3, NPC, Spawn, "It has moved on.  But we are on its trail.")
end

function GrizChat3(NPC, Spawn)
	SetStepComplete(Spawn, SometimesKnut, 1)
	RemoveSpawnAccess(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "How insightful.")
	StartDialogConversation(conversation, 3, NPC, Spawn, "Deeper.")
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 1 then
		AddSpawnAccess(NPC, Spawn)
	end
end