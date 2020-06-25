--[[
	Script Name	: SpawnScripts/Antonica/CaptainEitoa.lua
	Script Purpose	: Captain Eitoa 
	Script Author	: geordie0511
	Script Date	: 2019.03.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Keep = 470
local Gnoll = 471
local Captain = 472

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, Keep)   
	ProvidesQuest(NPC, Gnoll)   
	ProvidesQuest(NPC, Captain)   
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa000.mp3", "", "", 1089362944, 4215517300, Spawn)
		if GetQuestStep(Spawn, Keep) == 2 then
			PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa003.mp3", "", "", 1980389994, 2821940048, Spawn)
			AddConversationOption(conversation, "I was happy to be of assistance.")
			StartConversation(conversation, NPC, Spawn, "Good.  I worry about our outposts, especially the ones that... well, let's just say I'm relieved.  At any rate, here's a bit of coin from the city's coffers. Qeynos thanks you for your service.")
			SetStepComplete(Spawn, Keep, 2)
		elseif GetQuestStep(Spawn, Gnoll) == 4 then
			AddConversationOption(conversation, "Beltho's report, as you requested.", "dlg_18_1")
			AddConversationOption(conversation, "Ok, thanks anyway.")
			StartConversation(conversation, NPC, Spawn, "I wouldn't mind chatting with you in Irontoe's East, but here I've got work to do.")
		elseif GetQuestStep(Spawn, Captain) == 2 then
			SetStepComplete(Spawn, Captain, 2)
		elseif HasCompletedQuest(Spawn, Keep) == false and HasQuest(Spawn, Keep) == false then
			PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa001.mp3", "", "", 1114858162, 289977028, Spawn)
			AddConversationOption(conversation, "It is the least I can do for Qeynos.", "dlg_2_2")
			AddConversationOption(conversation, "That sounds a bit too far for me.")
			StartConversation(conversation, NPC, Spawn, "There is something you can do. I've posted a guard at the Keep of the Ardent Needle, and he hasn't been reporting to me as often as I'd like. Would you go inspect the keep and make sure everything is in order?")
		elseif HasCompletedQuest(Spawn, Gnoll) == false and HasQuest(Spawn, Gnoll) == false and HasCompletedQuest(Spawn, Keep) then
			PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa004.mp3", "", "", 14052338, 3802502153, Spawn)
			AddConversationOption(conversation, "I suppose I can do that.", "dlg_4_2")
			AddConversationOption(conversation, "Let someone else deal with it, I'm not interested.")
			StartConversation(conversation, NPC, Spawn, "I do.  I need someone to check with Captain Beltho at Gnollslayer Keep and return with his report about the gnolls.  I hope he's made progress since the last one.")
		elseif HasCompletedQuest(Spawn, Captain) == false and HasQuest(Spawn, Captain) == false and HasCompletedQuest(Spawn, Gnoll) then
			OfferQuest(NPC, Spawn, Captain)
		end
end

function Quest1(NPC, Spawn)
	OfferQuest(NPC, Spawn, Keep)
end

function Quest2(NPC, Spawn)
	OfferQuest(NPC, Spawn, Gnoll)
end

--------------- Keep

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa002.mp3", "", "", 2766073172, 817198256, Spawn)
		AddConversationOption(conversation, "I'll return after I've performed the inspection.", "Quest1")
	StartConversation(conversation, NPC, Spawn, "Go then.  You'll find the Keep on the north side of the ridge, just this side of the Tower of the Oracles. It's one of the few keeps in pristine condition.")
end

--------------- Quest2


function dlg_4_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa005.mp3", "", "", 1672181328, 1405369900, Spawn)
		AddConversationOption(conversation, "I'll return when I'm finished.", "Quest2")
	StartConversation(conversation, NPC, Spawn, "It's a fair distance, but not hard to find. Take the south path around the mountain range that splits Antonica.  Once you cross the bridge at the far side of the valley, follow the river a hundred cogs or so, then turn east until you see a small keep with a moat. Captain Beltho should be there. If he's not, I'll want to know why he's not at his post.")
end

---- Gnoll

function dlg_18_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa006.mp3", "", "", 3813922311, 2543607309, Spawn)
		AddConversationOption(conversation, "I suppose I was lucky to some extent. ", "dlg_18_2")
	StartConversation(conversation, NPC, Spawn, "Give me a moment to read over this...  Finally, some real progress! Beltho mentions your involvement with finding the hidden entrance to the gnoll lair. Well done!")
end

function dlg_18_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/captain_eitoa/antonica/captaineitoa007.mp3", "", "", 193114966, 1655403283, Spawn)
	AddConversationOption(conversation, "Thank you very much. Once again, I am happy to have been of service.")
	StartConversation(conversation, NPC, Spawn, "Don't underplay your skills.  Without your help, Beltho would still be searching for the hidden entrance to the lair. Take this signet ring as a mark of my gratitude and trust.")
	SetStepComplete(Spawn, Gnoll, 4)
end

---------------------
