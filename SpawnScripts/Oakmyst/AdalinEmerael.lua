--[[
	Script Name	: SpawnScripts/Oakmyst/AdalinEmerael.lua
	Script Purpose	: Adalin Emerael
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	:
--]]

local HIGH_ELF = 8
local HIGH_ELF_MENTOR_QUEST_5 = 69
local QUEST_1 = 294

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, HIGH_ELF_MENTOR_QUEST_5) then
		AddConversationOption(conversation, "I come on behalf of Vindain, from Castleview Hamlet.", "WhatNews")
	end
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		Say(NPC, "Thank you for your help.", Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		if GetRace(Spawn) == HIGH_ELF then
			NotAlwaysSoBusy(NPC, Spawn, conversation)
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/adalin_emerael/qey_adv01_oakmyst_revamp/qst_adalin_notonquest_5a7f745c.mp3", "Good day to you.", "", 16696239, 3805917441, Spawn)
		end
	end
end

function respawn(NPC)
	spawn(NPC)
end

----------------------------------------------------------------------------------------------------------------
--							HIGH_ELF_MENTOR_QUEST_5
----------------------------------------------------------------------------------------------------------------

function WhatNews(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "A corrupted sunshimmer sprite made its way into Castleview Hamlet. Vindain sent me to talk to you because of what that means...", "ThingsAreNotPleasant")
	StartConversation(conversation, NPC, Spawn, "And what news does he send?")
end

function ThingsAreNotPleasant(NPC, Spawn)
	if HasQuest(Spawn, HIGH_ELF_MENTOR_QUEST_5) then
		SetStepComplete(Spawn, HIGH_ELF_MENTOR_QUEST_5, 1)
	end

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "What is going on?", "Corruption")
	end
	AddConversationOption(conversation, "So I have heard.")
	StartConversation(conversation, NPC, Spawn, "... for Oakmyst. We know. Things are not pleasant here right now.")	
end

function Corruption(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What can I do to help?", "ToHelp")
	AddConversationOption(conversation, "I will return if I get time.")
	StartConversation(conversation, NPC, Spawn, "Corruption, and perhaps more. It is too early, and the information is too scattered, to know anything for certain. We can use all the help we can get at this point.")	
end

----------------------------------------------------------------------------------------------------------------
--							QUEST 1
----------------------------------------------------------------------------------------------------------------

function NotAlwaysSoBusy(NPC, Spawn, conversation)
	AddConversationOption(conversation, "What do you mean?", "WhatDoYouMean")
	StartConversation(conversation, NPC, Spawn, "The oakmyst was not always so busy.")
end

function WhatDoYouMean(NPC, Spawn, conversation)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Why do you wish that?", "WhyDoYouWishThat")
	StartConversation(conversation, NPC, Spawn, "At one point in time, this forest was a lonely place. This is not so true anymore, thought I wish it were.")
end

function WhyDoYouWishThat(NPC, Spawn, conversation)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What can I do to help?", "ToHelp")
	AddConversationOption(conversation, "That is most unfortunate. I will return later if I can help.")
	StartConversation(conversation, NPC, Spawn, "Corruption has found hold here. The source of this corruption we do not know. All we can do for now is react and hope more information come to light soon enough.")
end

function ToHelp(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "A gnoll in Oakmyst?", "AGnollInOakmyst")
	StartConversation(conversation, NPC, Spawn, "I am glad to hear you ask. I was in the process of clearing out the corruption in Oakmyst when I was attacked by a gnoll.")	
end

function AGnollInOakmyst(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "What must I do?", "WhatMustIDo")
	AddConversationOption(conversation, "Sorry, not today.")
	StartConversation(conversation, NPC, Spawn, "Hard to believe, I know. The guards didn't believe me either. It did happen, though. I am no fighter, and if I am attacked again I may not survive. I would ask of you a dangerous favor.")	
end

function WhatMustIDo(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Where are the trees?", "WhereAreTrees")
	StartConversation(conversation, NPC, Spawn, "Cleanse the trees of the Oakmyst. Be careful, gnolls may be lurking nearby. If you do find a gnoll, it is important you bring proof of its existence to a guard. If my words are not proof enough we shall find something that suffices.")	
end

function WhereAreTrees(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will, thank you.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "There is one just weest of the gates to Castleview Hamlet. Another is just east of the Western Falls west of the first tree. The final tree is east of the entrance to the docks on the western end of the forest. Remember, be wary of gnolls.")	
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) <= 4 then
		if GetQuestStep(Spawn, QUEST_1) == 4 then
			AddConversationOption(conversation, "Yes, they have.", "TreesCleansed")
		else
			AddConversationOption(conversation, "No, not yet.")
		end
		StartConversation(conversation, NPC, Spawn, "Have the trees been cleansed?")
	else
		Say(NPC, "Please, take the proof to Lieutenant Charlin. The Qeynos Guard must be alerted.", Spawn)
	end
end

function TreesCleansed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Yes, I did. I got his paw.", "GotPaw")
	StartConversation(conversation, NPC, Spawn, "Good, good. It is a small step for us, but an important one. Did you encounter any gnolls?")
end

function GotPaw(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Now the Qeynos Guard will have to believe me. Show the paw to Lieutenant Charlin. I'm sure it will interest him greatly. Thank you, " .. GetName(Spawn) .. ", for what you've done. ")
end