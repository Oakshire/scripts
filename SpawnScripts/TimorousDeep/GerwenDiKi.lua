--[[
	Script Name	: SpawnScripts/TimorousDeep/GerwenDiKi.lua
	Script Purpose	: Gerwen Di'Ki <Chrykori Standard>
	Script Author	: John Adams
	Script Date	: 2009.03.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 138

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/qst_diki_done_f06d90c4.mp3", "Thanks for the help.", "", 1995916608, 2179905765, Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		DidYouRustTheirWeapons(NPC, Spawn, conversation)
	else
		GerwenDiKi(NPC, Spawn, conversation)
	end
end

function GerwenDiKi(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/diki/diki000.mp3", "", "", 2027611006, 3835995279, Spawn)
	AddConversationOption(conversation, "Ok.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Gerwen Di'Ki, Chrykori Standard. Bezok and myself have been tasked with keeping Pyrrin Roost 'busy' during the assault on Thulwun Station. I have something now that I think will help set them back considerably. It's a compound that will rust metal instantly. I'd like you to travel down into Pyrrin Roost and use it on the spears the spirocs leave around.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function DidYouRustTheirWeapons(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/diki/diki002.mp3", "", "", 2536611298, 3200621556, Spawn)
	
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes I did.", "dlg_15_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Did you rust their weapons?")
end

function dlg_15_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/gerwen_di_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/diki/diki003.mp3", "", "", 595835432, 1064103179, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Great work! That alone will set them back a great deal, I am certain! Thank you.")
end