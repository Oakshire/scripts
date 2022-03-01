--[[
	Script Name	: SpawnScripts/ForestRuins/ulinir_gravestone01.lua
	Script Purpose	: ulinir_gravestone01
	Script Author	: Scatman
	Script Date	: 2009.09.26
	Script Notes	: Updated by Jabantiz (4/21/2017)
--]]

local WOODELF_MENTOR_QUEST_5 = 217 -- A Tribute for Ulinir

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
	conversation = CreateConversation()
	if HasQuest(Spawn, WOODELF_MENTOR_QUEST_5) and SpellName == "Read Gravestone" then
		AddConversationOption(conversation, "Place the Tribute.", "PlaceTribute")
	end
	AddConversationOption(conversation, "Leave.", "CheckRace")
	StartDialogConversation(conversation, 1, NPC, Spawn, "Ulinir\n\nOf the Pine\n\nNature's Strength")
end


function CheckRace(NPC, Spawn)
	if HasCompletedQuest(Spawn, WOODELF_MENTOR_QUEST_5) then
		MakeIlaenTalk(NPC, Spawn)
    CloseConversation(NPC, Spawn)
		else
    CloseConversation(NPC, Spawn)
	end
end

function MakeIlaenTalk(NPC, Spawn)
	local ilaen_lilac = GetSpawn(Spawn, 1960059)
	if ilaen_lilac ~= nil then
		FaceTarget(ilaen_lilac, Spawn)
		PlayFlavor(ilaen_lilac, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins_revamp/qst_woodelf_ilaen_lilac_ulinir_d84a1bb.mp3", "You are wise to know Ulinir is worth your time. Speak with me if you wish to use your wisdom for a greater good.", "", 1864539566, 4233668295, Spawn)
	end
end

function PlaceTribute(NPC, Spawn)
	SetStepComplete(Spawn, WOODELF_MENTOR_QUEST_5, 1)
	
	-- Tribute for Ulinir
	while HasItem(Spawn, 14667) do
		RemoveItem(Spawn, 14667)
	end
	
	local tribute = GetSpawn(Spawn, 1960152)
	if tribute == nil then
		local flower1 = SpawnMob(GetZone(Spawn), 1960140, 0, 967.417, -17.0745, -820.883, 159.344)
		local flower2 = SpawnMob(GetZone(Spawn), 1960140, 0, 967.54, -17.0745, -821.211, 159.344)
		local flower3 = SpawnMob(GetZone(Spawn), 1960140, 0, 967.604, -17.0745, -820.813, 159.344)
		local flower4 = SpawnMob(GetZone(Spawn), 1960140, 0, 967.727, -17.0745, -821.14, 159.344)
		tribute = SpawnMob(GetZone(Spawn), 1960152, 0, 967.581, -17.0745, -821.035, 159.344)
		Despawn(tribute, 300000)
		Despawn(flower1, 300000)
		Despawn(flower2, 300000)
		Despawn(flower3, 300000)
		Despawn(flower4, 300000)
	end
	
	MakeIlaenTalk(NPC, Spawn)
end
