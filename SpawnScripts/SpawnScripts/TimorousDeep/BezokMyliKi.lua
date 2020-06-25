--[[
	Script Name	: SpawnScripts/TimorousDeep/BezokMyliKi.lua
	Script Purpose	: Bezok Myli'Ki <Chrykori Standard>
	Script Author	: John Adams
	Script Date	: 2009.02.27
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

QUEST_1 = 131

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
		Say(NPC, "Everything counts in all amounts.", Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		HaveYouFreedThem(NPC, Spawn, conversation)
	else
		StruckSwiftly(NPC, Spawn, conversation)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--									QUEST 1
-----------------------------------------------------------------------------------------------------------------------------------------------------

function StruckSwiftly(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/bezok_myli_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/myliki/myliki000.mp3", "", "", 532076941, 871385780, Spawn)
	AddConversationOption(conversation, "I will free them.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "The Haoaerans struck as swiftly as their kind can muster, and yet we still managed to push them off. Unfortunately, this does not mean we are clear from the storm. What we need right now is more soldiers. The Haoaerans have a number of our soldiers imprisoned within Pyrrin Roost. If you can go kill their jailers and free them, they can return to Chrykori Village to regroup, and then return to Thulwun Station in force.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function HaveYouFreedThem(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/rok_questvo/bezok_myli_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/myliki/myliki002.mp3", "", "", 2957815254, 2149733637, Spawn)
	
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes, they have fled to Chrykori Village.", "dlg_14_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you freed them?")
end

function dlg_14_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/rok_questvo/bezok_myli_ki/_exp04/exp04_rgn_timorous_deep/chrykori_tie/myliki/myliki003.mp3", "", "", 344889731, 1839794732, Spawn)
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Great work, " .. GetName(Spawn) .. ". Every soldier is one more at their throats. Thank you.")
end