--[[
	Script Name      :    SpawnScripts/Commonlands/GerunPontian.lua
	Script Purpose   :    Gerun Pontian
	Script Author    :    vo1d
	Script Date      :    2019.10.28
	Script Notes     :    n/a
--]]

local SpeckledRattlerVenom = 375

function spawn(NPC)
	ProvidesQuest(NPC, SpeckledRattlerVenom)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if HasCompletedQuest(Spawn, SpeckledRattlerVenom) then
		CompletedRattlerQuest(NPC, Spawn)
	elseif HasQuest(Spawn, SpeckledRattlerVenom) then
		if GetQuestStep(Spawn, SpeckledRattlerVenom) == 1 then
			HaventGotTheVenom(NPC, Spawn)
		elseif GetQuestStep(Spawn, SpeckledRattlerVenom) == 2 then
			HasGotTheVenom(NPC, Spawn)
		end
	else
		FirstTimeSpeaking(NPC, Spawn)
	end
end

function dlg_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "How does this post turn profit?", "dlg_3")
	StartConversation(Conversation, NPC, Spawn, "Who attacks the gates of Freeport? Orcs? Dervish Cutthroats? Qeynosians? Hah! The only good thing about this post is it gives me a lot of time. And even the most daft of fools knows that time equals money.")
end

function dlg_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "What do you need?", "dlg_4")
	AddConversationOption(Conversation, "No thanks.")
	StartConversation(Conversation, NPC, Spawn, "Like I said, I've got free time. So while I'm out here I can acquire commodities that I can then sell to the merchants of Freeport. If I can't be out there earning glory, I'll stay back here and earn coin. Care to help?")
end

function dlg_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "Sure.", "OfferSpeckledRattlerVenom")
	StartConversation(Conversation, NPC, Spawn, "Venom has been selling quite nicely. There are quite a few speckled rattlers around here. They're a great source of venom. If you bring me back the venom from eight of them I'll give you a portion of what the profit will be. Sound good?")
end

function FirstTimeSpeaking(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(Conversation, "What makes it so dreary?", "dlg_2")
	AddConversationOption(Conversation, "I have to go.")
	StartConversation(Conversation, NPC, Spawn, "Gerun Pontian of the Militia. I watch the gates. I assure you a more dreary job does not exist in all of D'Lere.")
end

function OfferSpeckledRattlerVenom(NPC, Spawn)
	OfferQuest(NPC, Spawn, SpeckledRattlerVenom)
	
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	AddConversationOption(Conversation, "I'll be back.")
	StartConversation(Conversation, NPC, Spawn, "Great! I'll be here, of course.")
end

function HaventGotTheVenom(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(Conversation, "Not yet.")
	StartConversation(Conversation, NPC, Spawn, "Did you get the venom?")
end

function HasGotTheVenom(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(Conversation, "Yes, here it is.", "CompleteSpeckledRattlerVenom")
	StartConversation(Conversation, NPC, Spawn, "Did you get the venom?")
end

function CompleteSpeckledRattlerVenom(NPC, Spawn)
	SetStepComplete(Spawn, SpeckledRattlerVenom, 2)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()
	
	AddConversationOption(Conversation, "What is it?")
	AddConversationOption(Conversation, "No thanks.")
	StartConversation(Conversation, NPC, Spawn, "Good work. You've made us both quite a bit of coin. Thanks for the help. I'm sorry that my tasks have been so dull, it's hard to pull the important missions when you're a lowly gate patrol. I do have something a bit more exciting if you're interested.")
end

function CompletedRattlerQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1022.mp3", "", "", 0, 0, Spawn)
	AddConversationOption(Conversation, "My pleasure.")
	StartConversation(Conversation, NPC, Spawn, "You did well gathering the snake venom for freeport.")
end