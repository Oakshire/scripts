--[[
	Script Name	: SpawnScripts/ForestRuins/PokoZing.lua
	Script Purpose	: Poko Zing 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Notes	: 
	modified by     :Ememjr
	Modified Date   :5/16/2020
	Modified Notes  : added missing NPC text
--]]

local GNOME = 5
local QUEST_FROM_NEEZER = 29
local QUEST_1 = 30
local QUEST_FROM_GERMAIN = 521

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_NEEZER) then
		AddConversationOption(conversation, "I have a delivery from Neezer Grund.", "dlg_0_1")
	end
	
	if HasQuest(Spawn, QUEST_FROM_GERMAIN) then
		if GetQuestStep(Spawn, QUEST_FROM_GERMAIN) == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko010.mp3", "", "", 1396522810, 374675908, Spawn)
			AddConversationOption(conversation, "Lieutenant Germain wants you to analyze this leaf.", "dlg_9_1")
			StartConversation(conversation, NPC, Spawn, "How come nobody seems to realize how busy I am? Let me guess, you want me to do something very boring for your benefit, am I right?")
			
		elseif GetQuestStep(Spawn, QUEST_FROM_GERMAIN) == 7 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko014.mp3", "", "", 1818005855, 2773371212, Spawn)
			AddConversationOption(conversation, "Yes, here they are.", "Step7Complete")
			--AddConversationOption(conversation, "No, not yet.")
			StartConversation(conversation, NPC, Spawn, "Do you have my requested materials yet?")
		end
	else
		if HasCompletedQuest(Spawn, QUEST_1) then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins_revamp/qst_gnome_poko_zing_done_2d84e55b.mp3", "Go on now, I don't need yer help and you don't need mine.", "", 16598543, 2700760297, Spawn)
		elseif HasQuest(Spawn, QUEST_1) then
			OnQuest1(NPC, Spawn, conversation)
		else
			if GetRace(Spawn) == GNOME and GetLevel(Spawn) >= 3 then
				WhatDoYouNeed(NPC, Spawn, conversation)
			else
				PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins_revamp/qst_gnome_poko_zing_notonquest_f698071.mp3", "I am very, very busy. Please respect that.", "", 2080673395, 1843361681, Spawn)
			end
		end
	end
	
	--[[
	if HasQuest(Spawn, QUEST_FROM_NEEZER) then
		AddConversationOption(conversation, "I have a delivery from Neezer Grund.", "dlg_0_1")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		Say(NPC, "Go on now, I don't need yer help and you don't need mine.", Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		--if GetRace(Spawn) == GNOME then
			WhatDoYouNeed(NPC, Spawn, conversation)
		--else
		--	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins_revamp/qst_gnome_poko_zing_notonquest_f698071.mp3", "I am very, very busy. Please respect that.", "", 2080673395, 1843361681, Spawn)
		--end
	end
--]]
--[[



	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko014.mp3", "", "", 1818005855, 2773371212, Spawn)
		AddConversationOption(conversation, "No, not yet.", "dlg_2_1")
		StartConversation(conversation, NPC, Spawn, "Do you have my requested materials yet?")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko014.mp3", "", "", 1818005855, 2773371212, Spawn)
		AddConversationOption(conversation, "No, not yet.", "dlg_10_1")
		StartConversation(conversation, NPC, Spawn, "Do you have my requested materials yet?")
	end
--]]
end

-------------------------------------------------------------------------------------------------------------------
--					QUEST FROM NEEZER
-------------------------------------------------------------------------------------------------------------------

function dlg_0_1(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_NEEZER, 1)
	
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko_neezer001.mp3", "", "", 910537276, 2473499967, Spawn)
	
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		conversation = CreateConversation()
		AddConversationOption(conversation, "Neezer said you might have work for me.", "dlg_0_2")
		StartConversation(conversation, NPC, Spawn, "Ah, finally. You're kinda slow, aren't ya? Nevermind, don't answer, I don't wanna waste any more time than we already have. Goodbye.")
	else
		Say(NPC, "Ah, finally. You're kinda slow, aren't ya? Nevermind, don't answer, I don't wanna waste any more time than we already have. Goodbye.", Spawn)
	end
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko_neezer002.mp3", "", "", 204260728, 3356745328, Spawn)
	AddConversationOption(conversation, "Why are things hectic?", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "He said what? That's horrible, things here are so hectic right now I couldn't possibly take the time to give you some random task.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko_neezer003.mp3", "", "", 1892489912, 2005975591, Spawn)
	AddConversationOption(conversation, "Maybe I can help with that then, help figure out what is going on.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "People are showing up here for unknown reasons, and they seem to be hostile. We're not sure what their interest is, but it worries us.")
end

function dlg_0_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko_neezer004.mp3", "", "", 233334797, 3276971465, Spawn)
	AddConversationOption(conversation, "Well, all right.", "ICanHelp")
	StartConversation(conversation, NPC, Spawn, "No, no, no. That is far too important to hand to just anybody! How about I just give you some random task instead, eh?")
end

-------------------------------------------------------------------------------------------------------------------
--					QUEST 1
-------------------------------------------------------------------------------------------------------------------

function WhatDoYouNeed(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko_neezer000.mp3", "", "", 1600190149, 86494412, Spawn)
	AddConversationOption(conversation, "Is something wrong?", "OnlyEverything")
	StartConversation(conversation, NPC, Spawn, "What do you need and want and why did you come to me for it?")
end

function OnlyEverything(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What kinds of reports?", "WhatKindsOfReports")
	StartConversation(conversation, NPC, Spawn, "Only everything! Things are happening here and nobody knows what, precisely. We only have random reports, nothing concrete.")
end

function WhatKindsOfReports(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "But they didn't send the guard?", "DidntSendGuard")
	StartConversation(conversation, NPC, Spawn, "Strange plants, pirates, missing people, dead animals, enough bad things to send the Qeynos Guard--you would think.")
end

function DidntSendGuard(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can help.", "ICanHelp")
	StartConversation(conversation, NPC, Spawn, "They sent Germain here. He's nice, I suppose. He doesn't much care for expediency, though. With all this investigation going on I can't get any of the work done that I came here for originally!")
end

function ICanHelp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko004.mp3", "", "", 82829705, 492738311, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "All right, let's see. I came here because I wanted to collect junk. Important, life-altering junk. The kind of junk that helps a gnome stay in business while not setting him back financially, you know? Anyway, now you can do that for me. Collect some of the mechanical parts that have been scattered around this place.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 1 then
		AddConversationOption(conversation, "No, not yet.")
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko005.mp3", "", "", 1800972779, 2738310308, Spawn)
		StartConversation(conversation, NPC, Spawn, "Have you collected the parts yet?")
	elseif GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes, here they are.", "MostPrecise")
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko005.mp3", "", "", 1800972779, 2738310308, Spawn)
		StartConversation(conversation, NPC, Spawn, "Have you collected the parts yet?")
	elseif GetQuestStep(Spawn, QUEST_1) == 3 then
		Say(NPC, "Go on, run away from old Poko and talk to the Lieutenant about the machine you found. After that we can attend to whatever other business in important.", Spawn)
	end
end

function MostPrecise(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko006.mp3", "", "", 2355186524, 2969032857, Spawn)
	AddConversationOption(conversation, "Yes, I did.", "AllPartsFromHere")
	StartConversation(conversation, NPC, Spawn, "Most precise! I- uh- did you get all of these parts from here?")
end

function AllPartsFromHere(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will bring this to his attention.")
	StartConversation(conversation, NPC, Spawn, "This particular piece looks to be Freeportian in design--don't ask how I know that. It seems pretty damaged, almost useless to me, but it looks new enough to have been brought here recently. This is prety... strange. Go speak with Lieutenant Germain, tell him of this. Perhaps now Qeynos will involve herself a bit more eh? We shall see.")
end




---------------------------------------------
--				QUEST FROM GERMAIN		   --
---------------------------------------------
function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko011.mp3", "", "", 3922758270, 2259936446, Spawn)
	AddConversationOption(conversation, "It was off of a plant that had a strange glow surrounding it.", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Analyze? Why wo- ooh, is it glowing? This is an amazing find. Where DID you find it?")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko012.mp3", "", "", 2929679035, 2604586682, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "dlg_9_3")
	AddConversationOption(conversation, "No way.")
	StartConversation(conversation, NPC, Spawn, "How precise! Er, well I can do these tests but I'm going to need you to finish what I was working on in the interim.")
end

function dlg_9_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	SetStepComplete(Spawn, QUEST_FROM_GERMAIN, 1)
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko013.mp3", "", "", 2558023332, 1244993646, Spawn)
	AddConversationOption(conversation, "I will get what you need.", "dlg_9_4")
	StartConversation(conversation, NPC, Spawn, "I'm looking for a reason for the activity around here lately, the sudden interest. Who knows, maybe this leaf will prove to be that reason. But, I won't abandon my other theories. As such I'd like you to collect bark samples from the trees around here. My theory is--well that's not important. I need bark samples from trees both outside and inside the ruins, as well as from both north and south of the river that runs through them. I would also like some rock samples from the ruins.")
end

function Step7Complete(NPC, Spawn)
	--FaceTarget(NPC, Spawn)
	--conversation = CreateConversation()

	--SetStepComplete(Spawn, QUEST_FROM_GERMAIN, 7)
	
	--AddConversationOption(conversation, "What about the leaf?")
--	StartConversation(conversation, NPC, Spawn, "Good, give them to me.")
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
    SetStepComplete(Spawn, QUEST_FROM_GERMAIN, 7)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko015.mp3", "", "", 758778073, 2938724124, Spawn)
		AddConversationOption(conversation, "What about the leaf?", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Good, give them to me.")
	
end
function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/poko_zing/qey_adv02_ruins/quests/poko/poko016.mp3", "", "", 2083234040, 3590400426, Spawn)
		AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Oh, right. The leaf wasn't real at all. It was part of some sort of illusion. The plant it came from was meant to hide something. I've already told all of this to Lieutenant Germain, go talk to him, I'm busy.")
end

--[[ raw_conversations
	
--]]

