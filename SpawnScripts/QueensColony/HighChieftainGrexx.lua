--[[
	Script Name	: SpawnScripts/QueensColony/HighChieftainGrexx.lua
	Script Purpose	: High Chieftain Grexx 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheSourceOfEvil = 164
local ADiplomaticMission = 166

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if HasQuest(Spawn, ADiplomaticMission) and GetQuestStep(Spawn, ADiplomaticMission) == 8 then
		SetStepComplete(Spawn, ADiplomaticMission, 8)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, TheSourceOfEvil) then
		RebuildWeWill(NPC, Spawn)
	elseif HasQuest(Spawn, TheSourceOfEvil) then
		if GetQuestStep(Spawn, TheSourceOfEvil) == 6 then
			SadTimes(NPC, Spawn)
		elseif GetQuestStep(Spawn, TheSourceOfEvil) == 7 then
			HeroMustGo(NPC, Spawn)
		elseif GetQuestStep(Spawn, TheSourceOfEvil) == 8 then
			Prophecy(NPC, Spawn)
		elseif GetQuestStep(Spawn, TheSourceOfEvil) == 9 then
			RebuildWeWill(NPC, Spawn)
		else
			WaitingForHero(NPC, Spawn)
		end
	else
		WaitingForHero(NPC, Spawn)
	end
end

function SadTimes(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/high_chieftain_grexx/tutorial_island02_revamp/quests/citizenship/highchieftaingrexx/highchieftaingrexx001.mp3", "", "", 3594102111, 1132457141, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_5_1")
	AddConversationOption(conversation, "Sad times, indeed.")
	StartConversation(conversation, NPC, Spawn, "Sad times upon us. The Great Balancing before us. Coming I knew you would be. Had to, you did.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/high_chieftain_grexx/tutorial_island02_revamp/quests/citizenship/highchieftaingrexx/highchieftaingrexx002.mp3", "", "", 2612330834, 4076610842, Spawn)
	AddConversationOption(conversation, "I'll do what I can.", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "Prophecy speaks of the Great Balancing.  Time when gobbies are faced with destruction, hero arrives to save us.  Hero I feel from you.")
end

function dlg_5_2(NPC, Spawn)
	SetStepComplete(Spawn, TheSourceOfEvil, 6)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/high_chieftain_grexx/tutorial_island02_revamp/quests/citizenship/highchieftaingrexx/highchieftaingrexx003.mp3", "", "", 3142497620, 848770757, Spawn)
	AddConversationOption(conversation, "I'll head to the cave.", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "As it was written!  Sources of evil me thinks springs from cave.  Fog shows us evil inside.  Hero must save the Sapswill.  Hero must be victorious!")
end

function HeroMustGo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/high_chieftain_grexx/tutorial_island02_revamp/quests/citizenship/highchieftaingrexx/highchieftaingrexx004.mp3", "", "", 2809756305, 2299623207, Spawn)
	AddConversationOption(conversation, "To the cave, right.")
	StartConversation(conversation, NPC, Spawn, "Cave of fog to northeast hero must go!")
end

function Prophecy(NPC, Spawn)
	SetStepComplete(Spawn, TheSourceOfEvil, 8)
	FaceTarget(NPC, Spawn)
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/high_chieftain_grexx/tutorial_island02_revamp/quests/citizenship/highchieftaingrexx/highchieftaingrexx005.mp3", "", "", 4263574455, 1760884911, Spawn)
	StartConversation(conversation, NPC, Spawn, "Ahhh!  Truth the Prophecy speaks.  The Great Balancing is complete.  Evil our hero has conquered.  The Sapswill shall always remember and rebuild we will in your name,  ".. GetName(Spawn) .. ". Take the hero's gift.")
	--Say(NPC, "Ahhh! Truth the Prophecy speaks. The Great Balancing is complete. Evil our hero has conquered. The sapswill shall always remember and rebuild we will in your name, " .. GetName(Spawn) .. ". Take the hero's gift.")
end

function RebuildWeWill(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		
	AddConversationOption(conversation, "Good luck.")
	StartConversation(conversation, NPC, Spawn, "Rebuild we will in your name, " .. GetName(Spawn) .. "!")
end

function WaitingForHero(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/high_chieftain_grexx/tutorial_island02_revamp/quests/citizenship/highchieftaingrexx/highchieftaingrexx007.mp3", "", "", 3809751141, 2628831609, Spawn)
	AddConversationOption(conversation, "I'm just paying my respects, your...er, Grexxness.")
	AddConversationOption(conversation, "The hero will be along anytime now.")
	StartConversation(conversation, NPC, Spawn, "Waiting for hero we are, but the Great Balancing is not ready.")
end