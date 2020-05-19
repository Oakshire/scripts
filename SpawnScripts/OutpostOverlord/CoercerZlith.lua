--[[
	Script Name     :    SpawnScripts/OutpostoftheOverlord/CoercerZlith.lua
	Script Purpose  :    Coercer Zlith
	Script Author   :    vo1d
	Script Date     :    2019.10.04
	Script Notes    :    
	Script Issues   :    Missing PlayFlavor for Quest Step 5
--]]

-- Quest ID's
local DisruptionForDistraction = 366

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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
	Conversation = CreateConversation()

	if HasCompletedQuest(Spawn, DisruptionForDistraction) then
		FaceTarget(NPC, Spawn)
		Conversation = CreateConversation()

		AddConversationOption(Conversation, "Goodbye.")
		StartConversation(Conversation, NPC, Spawn, "You've done well, " .. GetName(Spawn).. ". The horse sentriesss were spotted moving into the Wilderwood from the north. The Qeynosian forces are thinning.")

	elseif HasQuest(Spawn, DisruptionForDistraction) then
		if GetQuestStep(Spawn, DisruptionForDistraction) == 1 then
			FaceTarget(NPC, Spawn)
			Conversation = CreateConversation()
			
			AddConversationOption(Conversation, "And you want me to...?", "dlg_2")
			AddConversationOption(Conversation, "Not right now.")
			StartConversation(Conversation, NPC, Spawn, "Sssso Filer, ready for a little sabotage? The mine is inside the Wilderwood in the far eastern corner.")
		elseif GetQuestStep(Spawn, DisruptionForDistraction) == 2 or GetQuestStep(Spawn, DisruptionForDistraction) == 3 then
			FaceTarget(NPC, Spawn)
			Conversation = CreateConversation()
			
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith003.mp3", "", "", 3347143195, 3837286784, Spawn)
			AddConversationOption(Conversation, "Okay, I'll be back.")
			StartConversation(Conversation, NPC, Spawn, "The mine is north up the ssslope into the Wilderwood and then eassst. This should definitely cause the disstraction we need for our final attack.")
		elseif GetQuestStep(Spawn, DisruptionForDistraction) == 4 then
			FaceTarget(NPC, Spawn)
			Conversation = CreateConversation()
			
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith004.mp3", "", "", 2084380659, 1533880588, Spawn)
			AddConversationOption(Conversation, "Yes, those horse sentries have been a thorn in my side.", "dlg_3")
			AddConversationOption(Conversation, "Not now.")
			StartConversation(Conversation, NPC, Spawn, "Nice work! As you probably noticed, there are additional Tunarian horse sentriesss being sssent into the Wilderwood to check on the mine. We need another distraction to thin out the Qeynosian forces even more. It's time to deal with those meddling sentriesss once and for all.")
		elseif GetQuestStep(Spawn, DisruptionForDistraction) == 5 then
			FaceTarget(NPC, Spawn)
			Conversation = CreateConversation()
			
			-- Missing PlayFlavor!
			AddConversationOption(Conversation, "Okay, I'll keep looking.")
			StartConversation(Conversation, NPC, Spawn, "The Tunarian horse sentriesss should be patrolling around the Wilderwood to the north. Return to me when you have dealt with them.")
		elseif GetQuestStep(Spawn, DisruptionForDistraction) == 6 then
			SetStepComplete(Spawn, DisruptionForDistraction, 6)
			FaceTarget(NPC, Spawn)
			Conversation = CreateConversation()

			AddConversationOption(Conversation, "I won't.")
			StartConversation(Conversation, NPC, Spawn, "You have done enough, " .. GetName(Spawn).. ". Tunarian reinforcementsss are on their way to the Wilderwood. Our time for attack is now! Tayil will be glad to hear of your work. Speaking of Tayil, take these sssealed orders. She sssent them for you, and if I were you I would not ignore them.")
		end
	end

	if CanReceiveQuest(Spawn, DisruptionForDistraction) then
			NotReady(NPC, Spawn)
	end
end

function dlg_2(NPC, Spawn)
	SetStepComplete(Spawn, DisruptionForDistraction, 1)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith002.mp3", "", "", 3880132810, 2976839399, Spawn)
	AddConversationOption(Conversation, "Consider it done!")
	StartConversation(Conversation, NPC, Spawn, "Head in there and sstir up the hornet's nest. Take out sssome of their miners, and while you're at it, grab some of the loose ore around the mine. Tayil wants to know what it is that they're mining.")
end

function dlg_3(NPC, Spawn)
	SetStepComplete(Spawn, DisruptionForDistraction, 4)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith005.mp3", "", "", 1181638962, 936080191, Spawn)
	AddConversationOption(Conversation, "Very well, I'm heading back in.")
	StartConversation(Conversation, NPC, Spawn, "Head back into the Wilderwood and take out sssome of these horse sentries. The more you slay, the more Qeynosians will be sent to investigate, which will provide our chance to attack. Return to me when the deed is done. By the way, I'll take those ore samples and make ssssure they find their way to Tayil.")
end

function NotReady(NPC, Spawn)
  FaceTarget(NPC, Spawn)
  Conversation = CreateConversation()
  
  PlayFlavor(NPC, "voiceover/english/tutorial_revamp/coercer_zlith/tutorial_island02_evil_revamp/quests/citizenship/coercerzlith/coercerzlith009.mp3", "", "", 2204153066, 1989322276, Spawn)
  AddConversationOption(Conversation, "Very well.", "dlg_3_1")
  StartConversation(Conversation, NPC, Spawn, "You are not yet ready to take on the tasks I will offer you. Return to Tayil N'Velex outside Sythor's Spire if you are unsure how to prepare yourself.")
end