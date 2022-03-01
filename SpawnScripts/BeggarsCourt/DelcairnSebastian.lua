--[[
	Script Name	: SpawnScripts/BeggarsCourt/DelcairnSebastian.lua
	Script Purpose	: Delcairn Sebastian
	Script Author	: Unknown (updated by Cynnar 2018.06.13 03:06:49)
	Script Date	: Unknown
	Script Notes	: Info was not filled out. Credit goes to the one who wrote the script.
--]]

local HALFELF_MENTOR_QUEST_1 = 307 -- A Delivery
local HALFELF_MENTOR_QUEST_2 = 308 -- Dirty Work
local HALFELF_MENTOR_QUEST_3 = 315 -- Reel Him In
local HALFELF_MENTOR_QUEST_4 = 317 -- Thaen Sevellos
local HALFELF_MENTOR_QUEST_5 = 319 -- One Last Request

local LIEUTENANT_CERVAEN = 1370037
local DELCAIRN_SEBASTIAN = 1370038

function spawn(NPC)
	ProvidesQuest(NPC, HALFELF_MENTOR_QUEST_2)
	ProvidesQuest(NPC, HALFELF_MENTOR_QUEST_4)
	ProvidesQuest(NPC, HALFELF_MENTOR_QUEST_5)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_1) then
		if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_2) then
			if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_3) then
				if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_4) then
					if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_5) then
						Say(NPC, "Good work. We appreciate it more than you know.", Spawn)
					elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_5) then
						Say(NPC, "Good work. We appreciate it more than you know.", Spawn)
					else
						OnQuest4(NPC, Spawn, conversation)
					end
				elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_4) then
					OnQuest4(NPC, Spawn, conversation)
				else
					OnQuest3(NPC, Spawn, conversation)
				end
			elseif HasQuest(Spawn,HALFELF_MENTOR_QUEST_3) then
				OnQuest3(NPC, Spawn, conversation)
			else
				Say(NPC, "Speak with Cervaen, he will brief you on the plan.", Spawn)
			end
		elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_2) then
			OnQuest2(NPC, Spawn, conversation)
		else
			Welcome(NPC, Spawn, conversation)
		end
	elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		Say(NPC, "Please, leave while it still doesn't matter.", Spawn)
	end
end

function respawn(NPC)
	spawn(NPC)
end

--------------------------------------------------------------------------------------------------------------------------------------------
--								HALFELF_MENTOR_QUEST_1
--------------------------------------------------------------------------------------------------------------------------------------------

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_1) == 1 then
		Say(NPC, "Please, leave while it still doesn't matter.", Spawn)
	elseif GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_1) == 2 then
		Welcome(NPC, Spawn, conversation)
	end
end

function Welcome(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn001.mp3", "", "", 144616361, 2775223006, Spawn)
	AddConversationOption(conversation, "I would like to help.", "dlg_8_1")
	StartConversation(conversation, NPC, Spawn, "Welcome, " .. GetName(Spawn) .. ". What can The Brotherhood do for you? Our conversation can be long or it can be short. Worry not, we will pay you for your delivery.")
end

function dlg_8_1(NPC, Spawn)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_1) then
		SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_1, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn002.mp3", "", "", 718931857, 2390994276, Spawn)
	AddConversationOption(conversation, "Rommuls?", "dlg_8_2")
	StartConversation(conversation, NPC, Spawn, "Ah. But do you know what you want to help with? The Brotherhood attracts many who do not truly believe in its cause. It attracts radicals and anarchists who wish only for pain and torment. We are not that, " .. GetName(Spawn) .. ". We seek only justice. There is a great injustice walking the streets of Beggar's Court even as we speak.")
end

--------------------------------------------------------------------------------------------------------------------------------------------
--								HALFELF_MENTOR_QUEST_2
--------------------------------------------------------------------------------------------------------------------------------------------

function dlg_8_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn003.mp3", "", "", 982292673, 517388621, Spawn)
	AddConversationOption(conversation, "[listen to conversation]", "CervaenTalk1")
	StartConversation(conversation, NPC, Spawn, "Yes, Rommuls. He dislikes us, and so he uses his power to harass, harm, even kill us. Few in Freeport care of his deeds, let them remain indifferent. The Brotherhood will solve its own problems. I- Cervaen, what is it?")
end

function CervaenTalk1(NPC, Spawn)
	local Cervaen = GetSpawn(Spawn, LIEUTENANT_CERVAEN)
	
	FaceTarget(Cervaen, NPC)
	conversation = CreateConversation()
	
	PlayFlavor(Cervaen, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen_tradeoff000.mp3", "", "", 3243592736, 1629677067, Spawn)
	AddConversationOption(conversation, "[listen to conversation]", "SebastianTalk1")
	StartConversation(conversation, Cervaen, Spawn, "Sir... Thaen, Revlos, Jalya... their mission failed.")
end

function CervaenTalk2(NPC, Spawn)
	local Cervaen = GetSpawn(Spawn, LIEUTENANT_CERVAEN)
	
	FaceTarget(Cervaen, NPC)
	conversation = CreateConversation()
	
	PlayFlavor(Cervaen, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen_tradeoff001.mp3", "", "", 1068640212, 1975761301, Spawn)
	AddConversationOption(conversation, "[listen to conversation]", "SebastianTalk2")
	StartConversation(conversation, Cervaen, Spawn, "I just got word from Thavian. Jalya is dead and Thaen is in captivity. Revlos has betrayed us.")
end

function CervaenTalk3(NPC, Spawn)
	local Cervaen = GetSpawn(Spawn, LIEUTENANT_CERVAEN)
	
	FaceTarget(Cervaen, NPC)
	conversation = CreateConversation()
	
	PlayFlavor(Cervaen, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen_tradeoff002.mp3", "", "", 872569358, 130933055, Spawn)
	AddConversationOption(conversation, "[listen to conversation]", "SebastianTalk3")
	StartConversation(conversation, Cervaen, Spawn, "Thavian doesn't know, sir. All he knows is that Revlos has betrayed us.")
end

function CervaenTalk4(NPC, Spawn)
	local Cervaen = GetSpawn(Spawn, LIEUTENANT_CERVAEN)
	
	FaceTarget(Cervaen, NPC)
	conversation = CreateConversation()
	
	PlayFlavor(Cervaen, "voiceover/english/tutorial_revamp/lieutenant_cervaen/fprt_hood04/quests/cervaen/cervaen_tradeoff003.mp3", "", "", 3371521952, 284772411, Spawn)
	AddConversationOption(conversation, "[listen to conversation]", "SebastianTalk4")
	StartConversation(conversation, Cervaen, Spawn, "No, sir. But he does know that Revlos' cohorts are meeting to discuss his debriefing. They're meeting at the gates to North Freeport, soon.")
end

function GoodLoam(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn005.mp3", "", "", 549706285, 563599321, Spawn)
	AddConversationOption(conversation, "Both cups?", "OfferQuest2")
	StartConversation(conversation, NPC, Spawn, "Good. Loamshallow is not a member of The Brotherhood but he is sympathetic. He will sell you a vial of poison, Fate's Whisper. Buy it, then proceed to the gates to North Freeport and hide behind the gate. The western side should provide ample cover. Listen to their conversation and learn where Revlos' meeting is to take place, then go there. They will have already set it up for a meeting, there should be cups present, poison them.")
end

function OfferQuest2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HALFELF_MENTOR_QUEST_2)
end

function OnQuest2(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn006.mp3", "", "", 3829362296, 3731812523, Spawn)
	
	if GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_2) == 4 then
		AddConversationOption(conversation, "Yes, the cups are poisoned.", "dlg_22_1")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you done what was required?")
end

function dlg_22_1(NPC, Spawn)
	SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_2, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn007.mp3", "", "", 2362160812, 2895340086, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "Good. Revlos... we didn't deserve this. While you were gone Cervaen and I worked over a new plan, speak with him to be briefed.")
end

---------------------------------------------------------------------------------------------------------------------
--								HALFELF_MENTOR_QUEST_3
---------------------------------------------------------------------------------------------------------------------

function OnQuest3(NPC, Spawn, conversation)
	if (HasQuest(Spawn,HALFELF_MENTOR_QUEST_3) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_3) == 4) or (HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_3) and not HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_4)) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn008.mp3", "", "", 3033653265, 2915705439, Spawn)
		AddConversationOption(conversation, "That was fast.", "dlg_25_1")
		StartConversation(conversation, NPC, Spawn, "You did good, " .. GetName(Spawn) .. ". Rommuls was captured. He will be given justice. The Overlord released a public statement informing the populace of Rommuls' weakness and subsequent termination from his post, his followers will be allowed to remain in the militia but under strict watch.")
	else
		Say(NPC, "Speak with Cervaen, he will brief you on the plan.", Spawn)
	end
end

function dlg_25_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn009.mp3", "", "", 2387230376, 93430481, Spawn)
	AddConversationOption(conversation, "I see.", "dlg_25_2")
	StartConversation(conversation, NPC, Spawn, "Heh, do you think the Overlord really cares about what goes on in these districts? Some office of the government--who knew it was going to happen a long time ago--released the statement. The Overlord was made aware but obviously didn't care. The Brotherhood has friends in high places. And so, to turn indifference into support is not a hard thing.")
end

function dlg_25_2(NPC, Spawn)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_3) then
		SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_3, 4)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn010.mp3", "", "", 2380606037, 663564868, Spawn)
	AddConversationOption(conversation, "You mean Thaen?", "dlg_25_3")
	AddConversationOption(conversation, "I cannot help right now.")
	StartConversation(conversation, NPC, Spawn, "There is one more mess to clean up, " .. GetName(Spawn) .. ". We would like your help. What do you say?")
end

---------------------------------------------------------------------------------------------------------------------
--								HALFELF_MENTOR_QUEST_4
---------------------------------------------------------------------------------------------------------------------

function dlg_25_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn011.mp3", "", "", 2589243361, 2803092595, Spawn)
	AddConversationOption(conversation, "That doesn't sound too hard.", "OfferQuest4")
	StartConversation(conversation, NPC, Spawn, "Yes, Thaen. We've gotten word of where they're holding him, we'd like you to go free him. Their forces are weak, you should have no trouble. He's just north of here, in a run down building.")
end

function OfferQuest4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HALFELF_MENTOR_QUEST_4)
end

function OnQuest4(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn013.mp3", "", "", 284231717, 1738375836, Spawn)
	
	if (HasQuest(Spawn, HALFELF_MENTOR_QUEST_4) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_4) == 2) or (HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_4) and not HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_5)) then
		AddConversationOption(conversation, "Yes, Thaen is safe.", "dlg_30_1")
	else
		AddConversationOption(conversation, "Not yet.")
	end
	
	StartConversation(conversation, NPC, Spawn, "Have you freed Thaen?")
end

function dlg_30_1(NPC, Spawn)
	if HasQuest(Spawn, HALFELF_MENTOR_QUEST_4) then
		SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_4, 2)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn014.mp3", "", "", 2285068924, 2141156467, Spawn)
	AddConversationOption(conversation, "Yes.", "dlg_30_2")
	AddConversationOption(conversation, "No, sorry.")
	StartConversation(conversation, NPC, Spawn, "Wonderful. Your arrival was at a key moment, a tragedy--a severe tragedy--ended with your help. As the Brotherhood preaches, balance is everything. I would like you to speak with someone. He is not of the Brotherhood, but his goals and ours are paired. Will you help us more?")
end

---------------------------------------------------------------------------------------------------------------------
--								HALFELF_MENTOR_QUEST_5
---------------------------------------------------------------------------------------------------------------------

function dlg_30_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/delcairn_sebastian/fprt_hood04/quests/delcairn/delcairn015.mp3", "", "", 3978499677, 3940019071, Spawn)
	AddConversationOption(conversation, "All right.", "OfferQuest5")
	StartConversation(conversation, NPC, Spawn, "Good. Go speak with Inquisitor Thorson in the Sunken City. Do as he asks, you will help us more than you know. Thank you again for all your help. If you go to the docks here in Beggar's Court you can use the Mariner's Bell to get to Sunken City.")
end

function OfferQuest5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, HALFELF_MENTOR_QUEST_5)
end