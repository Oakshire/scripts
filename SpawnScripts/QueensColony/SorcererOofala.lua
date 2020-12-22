--[[
	Script Name	: SorcererOofala script
	Script Purpose	: Quest, Conversations.
	Script Author	: Unknown, premierio015
	Script Date	: 2020.04.11
	Script Notes	: 
        Modified Date   : 2020.04.10
	Modiefied by    : premierio015
	Modified Notes  : Added missing VoiceOvers and Anims
	
	These are just suggested functions to get you started. Edit as needed.
--]]

local TheSourceOfEvil = 164

function prespawn(NPC)
    AddSpawnProximity(NPC,2530018,0,15,"InRange","OutRange")
end


function spawn(NPC)
         prespawn(NPC)
end

function respawn(NPC)
         spawn(NPC)
end


function InRange(NPC,Spawn)
    Shout(NPC,"In Range 1")
    Shout(Spawn,"Also n Range 2")
end

function OutRange(NPC,Spawn)
    Shout(NPC,"Out of Range 1")
    Shout(Spawn,"Out of Range 2")
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, TheSourceOfEvil) then
		StavesHere(NPC, Spawn)
	elseif HasQuest(Spawn, TheSourceOfEvil) then
		if GetQuestStep(Spawn, TheSourceOfEvil) == 1 then
			LoveThisJob(NPC, Spawn)
		elseif GetQuestStep(Spawn, TheSourceOfEvil) == 2 then
			KeepLooking(NPC, Spawn)
		elseif GetQuestStep(Spawn, TheSourceOfEvil) == 3 then
			CausedAnUproar(NPC, Spawn)
		elseif GetQuestStep(Spawn, TheSourceOfEvil) == 4 then
			INeedToStayBack(NPC, Spawn)
		elseif GetQuestStep(Spawn, TheSourceOfEvil) == 5 then
			WhatAFight(NPC, Spawn)
		else
			StavesHere(NPC, Spawn)
		end
	else
		NoAssignments(NPC, Spawn)
	end
end

function NoAssignments(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Very well.")
	StartConversation(conversation, NPC, Spawn, "I do not have any assignments for you right now. Speak with Murrar Shar outside of Myrrin's Tower at the center of the colony. He should have some work for you.")
end

---------------------------------------------------------------------------------------------------------------------
--                        QUEST 5
---------------------------------------------------------------------------------------------------------------------

function LoveThisJob(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala001.mp3", "", "chuckle", 3877143308, 4000536977, Spawn)
	AddConversationOption(conversation, "Great like you I guess.", "GreatLikeYou")
	AddConversationOption(conversation, "I don't have time for this.")
	StartConversation(conversation, NPC, Spawn, "Boom! I love this job! Someday I'll be the greatest wizard in all of Qeynos. And you, " .. GetName(Spawn) .. ", what do you aspire to be?")
end

function GreatLikeYou(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	-- display a different message is the player is an Erudite (3)
	if GetRace(Spawn) == 3 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala003.mp3", "", "ponder", 2241109918, 2606755898, Spawn)
		AddConversationOption(conversation, "I'm all ears.", "YouNeedMyHelp")
		StartConversation(conversation, NPC, Spawn, "It is possible. I would never doubt a fellow Erudite's journey to greatness. Well let's start now, I can use your help.")
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala002.mp3", "", "ponder", 4176331969, 1953264521, Spawn)
		AddConversationOption(conversation, "You need my help?", "YouNeedMyHelp")
		StartConversation(conversation, NPC, Spawn, "It is possible, but unlikely. I've got the edge of course, being an Erudite. But let's put that behind us, since I suppose I need your help.")
	end
end

function YouNeedMyHelp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala004.mp3", "", "sigh", 2866793980, 3810777786, Spawn)
	AddConversationOption(conversation, "Go on.", "GoOn")
	StartConversation(conversation, NPC, Spawn, "Well I need to stay here and guard the camp, but I need you to venture into the Abandoned Village. The goblins have revealed some disturbing news. A few survived and made it into our camp here, but the rest were consumed by a mysterious fog.")
end

function GoOn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala005.mp3", "", "nod", 973060911, 209786157, Spawn)
	AddConversationOption(conversation, "So you want me to destroy these totems?", "DestroyTotems")
	AddConversationOption(conversation, "I can't do that right now.")
	StartConversation(conversation, NPC, Spawn, "Apparently some mysterious totems appeared throughout the village and spewed a fog that enveloped it. It appears that only a few survived, and the rest were turned into... the living dead.")
end

function DestroyTotems(NPC, Spawn)
	SetStepComplete(Spawn, TheSourceOfEvil, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala006.mp3", "", "nod", 4222023563, 856617808, Spawn)
	AddConversationOption(conversation, "I will hunt the totems.")
	StartConversation(conversation, NPC, Spawn, "Exactly. Clear them away from the village and maybe it will help lead us to the source of the evil.")
end

function KeepLooking(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala007.mp3", "", "point", 3408827694, 4109110029, Spawn)
	AddConversationOption(conversation, "I'll keep looking.")
	StartConversation(conversation, NPC, Spawn, "Keep looking for those totems. They should be on the outskirts of the Sapswill tents.")

end

function CausedAnUproar(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   conversation = CreateConversation()

   PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala008.mp3", "", "nod", 4250133850, 1269094283, Spawn)
   AddConversationOption(conversation, "By me? Aren't you the great wizard?", "GreatWizard")
   StartConversation(conversation, NPC, Spawn, "Wow, you really caused an uproar! Removing those totems must have angered whatever sinister force is behind all this. An evil champion has shown his face and must be dealt with. The Dark Blademaster must be defeated!")
end

function GreatWizard(NPC, Spawn)
	SetStepComplete(Spawn, TheSourceOfEvil, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala014.mp3", "", "shrug", 767847484, 3041386379, Spawn)
	AddConversationOption(conversation, "I guess I'll take care of it.")
	StartConversation(conversation, NPC, Spawn, "Well, if Murrar had sent me to take out the Blademaster, it would be done already. My orders are to protect the camp here, at which I am doing a superb job. Enough debate. Destroy the Blademaster!")
end

function INeedToStayBack(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
    PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala009.mp3", "", "scold", 1026592002, 1487748487, Spawn)
	AddConversationOption(conversation, "Sheesh!")
	StartConversation(conversation, NPC, Spawn, "I need to stay back and guard the camp. Get rid of the Dark Blademaster!")
end

function WhatAFight(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala010.mp3", "", "nod", 1430233881, 2273383755, Spawn)
	AddConversationOption(conversation, "Should I report back to Murrar?", "ReportBack")
	AddConversationOption(conversation, "Not right now.")
	StartConversation(conversation, NPC, Spawn, "What a fight that was! For a moment there, I thought I would need to step in and help you. The Blademaster's insignia is very disturbing. I should have known Freeport was involved in this corruption somehow! We must act quickly if we are to stop the evil.")
end

function ReportBack(NPC, Spawn)
	SetStepComplete(Spawn, TheSourceOfEvil, 5)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala013.mp3", "", "frustrated", 911037523, 2792380927, Spawn)
	AddConversationOption(conversation, "I'll head to the High Chieftain.")
	StartConversation(conversation, NPC, Spawn, "There's no time! Our forward scouts report that High Chieftain Grexx is still alive and holding off the invasion from his tree house to the east. You must go talk to him before it's too late!")
end

function StavesHere(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
   
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quests/citizenship/sorcereroofala/sorcereroofala011.mp3", "", "nod", 2191225450, 1589931900, Spawn)
	AddConversationOption(conversation, "I'll keep that in mind.")
	StartConversation(conversation, NPC, Spawn, "If you ever need them, my guardian staves will be here.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/sorcerer_oofala/tutorial_island02_revamp/quest/citizenship_sorcerer_oofala_staffkill_5b312f60.mp3", "Ha! Did you see that?", "chuckle", 3419630960, 667923165, Spawn)
--]]
