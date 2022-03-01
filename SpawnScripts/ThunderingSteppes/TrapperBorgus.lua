--[[
    Script Name    : SpawnScripts/ThunderingSteppes/TrapperBorgus.lua
    Script Author  : Jabantiz
    Script Date    : 2014.07.03 06:07:51
    Script Purpose : 
                   : 
--]]

local HuntingForTrapperBorgus = 98

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 20, "InRange")
	ProvidesQuest(NPC, HuntingForTrapperBorgus)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if not HasQuest(Spawn, HuntingForTrapperBorgus) then
		if HasCompletedQuest(Spawn, HuntingForTrapperBorgus) then
			PlayFlavor(NPC, "voiceover/english/trapper_borgus/steppes/030_dwarf_trapper_borgus_aoi_callout_familiar_75373ef2.mp3", "Ah!  There you are, I need yer help again!", "wave", 3299608738, 3594130452, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/trapper_borgus/steppes/030_dwarf_trapper_borgus_aoi_callout_unfamiliar_93226f1b.mp3", "Oh me achin' back!  Give an old dwarf a hand?", "wince", 4014576750, 2294200697, Spawn)
		end
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, HuntingForTrapperBorgus) then
		-- Has the quest
		if GetQuestStep(Spawn, HuntingForTrapperBorgus) == 1 then
			-- Hasn't finished the quest yet
			PlayFlavor(NPC, "voiceover/english/trapper_borgus/steppes/trapper_borgus003.mp3", "", "", 2061866687, 623475610, Spawn)
			AddConversationOption(conversation, "No problem.")
			StartConversation(conversation, NPC, Spawn, "That's not enough beasts to fill me bags!  I need more Steppes beasts for my provisions!")
		elseif GetQuestStep(Spawn, HuntingForTrapperBorgus) == 2 then
			-- Finished and turning the quest in
			SetStepComplete(Spawn, HuntingForTrapperBorgus, 2)
			PlayFlavor(NPC, "voiceover/english/trapper_borgus/steppes/trapper_borgus004.mp3", "", "", 2882844739, 4151927708, Spawn)
			AddConversationOption(conversation, "Sure.", "dlg_2_1")
			AddConversationOption(conversation, "Not right now.")
			StartConversation(conversation, NPC, Spawn, "That should do the trick!  Thank yeh for the help!  Think you might want to get some more?")
		end
	else
		PlayFlavor(NPC, "voiceover/english/trapper_borgus/steppes/trapper_borgus001.mp3", "", "", 2091451215, 1918648250, Spawn)
		AddConversationOption(conversation, "Yes, I'll help you.", "dlg_1_1")
		AddConversationOption(conversation, "Sorry, I must get going.")	
		StartConversation(conversation, NPC, Spawn, "Me family sent me out for provisions, and I hurt me back lifting me pack!  I come from a family o' miners n' boulder bashers, I would never hear the end of it!  Can you help me kill enough beasts to get the provisions I need?")
	end
end

function dlg_1_1(NPC, Spawn)
	OfferQuest(NPC, Spawn, HuntingForTrapperBorgus)
end

function dlg_2_1(NPC, Spawn)
	SetTempVariable(Spawn, "RepeatHuntingForTrapperBorgus", "true")
	OfferQuest(NPC, Spawn, HuntingForTrapperBorgus)
end