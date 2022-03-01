--[[
	Script Name	: SpawnScripts/QueensColony/SergeantHaggus.lua
	Script Purpose	: Sergeant Haggus <Qeynos Guard>
	Script Author	: Scatman
	Script Date	: 2008.09.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Modified Data   : 2020.04.04
	Modified by     : premierio015
	Notes           : Added animations
--]]

local APresenceOfEvil = 131

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, APresenceOfEvil) and GetQuestStep(Spawn, APresenceOfEvil) < 6 then
		if GetQuestStep(Spawn, APresenceOfEvil) == 1 then
			--on 1st part of quest
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus001.mp3", "", "threaten", 706977451, 1189091137, Spawn)
			AddConversationOption(conversation, "Yes. He was wondering how our defenses are holding?", "WonderingHowDefenses")
			AddConversationOption(conversation, "I'll come back. It seems that you're busy.")
			StartConversation(conversation, NPC, Spawn, "Har! These scampering whelps will never break through! Oh, hello there. What's that, Murrar sent you?")
		elseif GetQuestStep(Spawn, APresenceOfEvil) == 2 then
			-- on 2nd part of quest
			AddConversationOption(conversation, "I will.")
			PlayAnimation(NPC, 20601)
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus004.mp3", "", "chuckle", 2765536004, 3737520445, Spawn)
			StartConversation(conversation, NPC, Spawn, "Har har! Don't give up yet, " .. GetName(Spawn) .. ". Slay some of those invaders. If you need some tips on combat, talk to Hayl McGuinness at the Training Grounds in the colony.")
		elseif GetQuestStep(Spawn, APresenceOfEvil) == 3 then
			--on 3rd part of quest
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus005.mp3", "", "thanks", 4260313183, 1230463125, Spawn)
			AddConversationOption(conversation, "I'm ready!", "ImReady")
			AddConversationOption(conversation, "Not yet.")
			StartConversation(conversation, NPC, Spawn, "By the hilt of the Claymore, you're a strong one! I could use your strength for another task.")
		elseif GetQuestStep(Spawn, APresenceOfEvil) == 4 then
			--on 4th part of quest
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus007.mp3", "", "", 4033698281, 2952828006, Spawn)
			AddConversationOption(conversation, "Very well.")
			StartConversation(conversation, NPC, Spawn, "Any news of the missing soldiers? Search Sunset Meadow for these soldiers and return to me with your findings.")
		elseif GetQuestStep(Spawn, APresenceOfEvil) == 5 then
			--on 5th part of quest
			SetStepComplete(Spawn, APresenceOfEvil, 5)
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus009.mp3", "", "threaten", 3590531004, 2647104527, Spawn)
			AddConversationOption(conversation, "Farewell to you.")
			StartConversation(conversation, NPC, Spawn, "Ah, they'll pay for this! You've done well, " .. GetName(Spawn) .. ". Sometime when you're not so busy, maybe you'd take a job with the Qeynos Guard and we can fight along side one another again. Take this information back to Murrar. Farewell.")
		end
	elseif HasCompletedQuest(Spawn, APresenceOfEvil) or (HasQuest(Spawn, APresenceOfEvil) and GetQuestStep(Spawn, APresenceOfEvil) == 6) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus010.mp3", "", "salute", 3061438505, 1032934814, Spawn)
		AddConversationOption(conversation, "Thank you.")
		StartConversation(conversation, NPC, Spawn, "You've proven yourself to me, " .. GetName(Spawn) .. ". Consider yourself a friend to the Qeynos Guard.")
	else
		Say(NPC, "Ah you look strong. I'm certain we could use your help, go speak with Murrar. He's south of the tower that is just east of here.")
	end
end

function WonderingHowDefenses(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus002.mp3", "", "", 3601499241, 3746466672, Spawn)
	AddConversationOption(conversation, "Could you use some help?", "CouldYouUseHelp")
	AddConversationOption(conversation, "I'll take my leave.")
	StartConversation(conversation, NPC, Spawn, "While the goblins aren't very powerful, they're most definitely tenacious. It's almost as if they have no mind of their own and are throwing themselves at us like flies unto a swatter.")
end

function CouldYouUseHelp(NPC, Spawn)
	SetStepComplete(Spawn, APresenceOfEvil, 1)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus003.mp3", "", "", 407810644, 1199559577, Spawn)
	AddConversationOption(conversation, "Will do!")
	StartConversation(conversation, NPC, Spawn, "Aye, you're a gusty one aren't you? I'll give you a chance to prove your strength. Fend off some of these invading Sapswill and we'll see how you fare.")
end

function ImReady(NPC, Spawn)
	SetStepComplete(Spawn, APresenceOfEvil, 3)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sergeant_haggus/tutorial_island02_revamp/quests/citizenship/sergeanthaggus/sergeanthaggus006.mp3", "", "", 2780322339, 3145013232, Spawn)
	AddConversationOption(conversation, "I will.")
	StartConversation(conversation, NPC, Spawn, "A platoon of my soldiers set out a while ago and hasn't returned. Search Sunset Meadow for these soldiers and return to me with your findings.")
end