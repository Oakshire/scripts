--[[
	Script Name	: SpawnScripts/Graystone/quest_shipment_3.lua
	Script Purpose	: quest_shipment_3
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
--]]

-- Quest ID's
local BARBARIAN_MENTOR_QUEST_3 = 291

-- Item ID's
local LOCATION_BUOYS = 9109

function spawn(NPC)
	SetRequiredQuest(NPC, BARBARIAN_MENTOR_QUEST_3, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
	-- Location Buoys
	if HasQuest(Caster, BARBARIAN_MENTOR_QUEST_3) and not QuestStepIsComplete(Caster, BARBARIAN_MENTOR_QUEST_3, 3) and HasItem(Caster, LOCATION_BUOYS) then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Attach the location buoy to the create.", "AttachBuoy")
		AddConversationOption(conversation, "Put the buoys away.", "CloseConversation")
		StartDialogConversation(conversation, 1, Target, Caster, "The location buoys are ready to be attached to the crates, you just need to get close enough to attach them properly.")
	end
end

function AttachBuoy(NPC, Spawn)
	conversation = CreateConversation()
	AddConversationOption(conversation, "Put the buoys away.", "CloseConversation")
	StartDialogConversation(conversation, 1, NPC, Spawn, "You fashion a buoy to the crate and let the flotation device float freely to the surface. The shipping coordinate and his men should now be able to locate this crate.")
		
	SetStepComplete(Spawn, BARBARIAN_MENTOR_QUEST_3, 3)
	local Buoy = SpawnMob(GetZone(NPC), 2350166, false, 953.05, -27.15, -148.67)
	SpawnSet(Buoy, "initial_state", "49156")
	Despawn(Buoy, 120000)
end