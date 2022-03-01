--[[
	Script Name	: SpawnScripts/ButcherblockMountains/GuardDaarwyn.lua
	Script Purpose	: Guard Daarwyn 
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local ThievingRunts = 272

function spawn(NPC)
	ProvidesQuest(NPC, ThievingRunts)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, ThievingRunts) == false and HasQuest(Spawn, ThievingRunts) == false and CanReceiveQuest(Spawn, ThievingRunts) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "What is happening?", "dlg_3_1")
		AddConversationOption(conversation, "That's unfortunate.  Farewell.")
		StartConversation(conversation, NPC, Spawn, "Blast those beasts.  As if we don't have few enough supplies, they sneak into our camp and steal what little we have!  It is maddening!")
	elseif GetQuestStep(Spawn, ThievingRunts) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I am still hunting them down. I will return soon.")
		StartConversation(conversation, NPC, Spawn, "Well?  How goes your hunt?")
	elseif GetQuestStep(Spawn, ThievingRunts) == 2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I have gathered up a good batch of ears for you.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Well?  How goes your hunt?")
	elseif HasCompletedQuest(Spawn, ThievingRunts) == true then
		PlayFlavor(NPC, "", "The dangers here are unique, but it isn't anything we cannot deal with.", "converse", 1689589577, 4560189, Spawn)
	else
		PlayFlavor(NPC, "", "The dangers here are unique, but it isn't anything we cannot deal with.", "converse", 1689589577, 4560189, Spawn)
	end
end

function dlg_1_1(NPC, Spawn)
	SetStepComplete(Spawn, ThievingRunts, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "Thank you.  Farewell.", "dlg_1_2")
	StartConversation(conversation, NPC, Spawn, "Now this is good to see!  I may not have the supplies back, but perhaps hanging some of these around might deter them from taking any more.  Well, I promised you a bounty, and you have earned it.  A job well done.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Perhaps I could help with that.  I am looking for work in the area, anyway.", "dlg_3_2")
		AddConversationOption(conversation, "Maybe you'll get your chance sometime.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "The goblins!  They creep up from the water in the night, and take anything that is close to the edge of the camp.  We have to post guards all around at all hours, which puts a further strain on our already thin numbers.  If I could, I would hunt them down myself!")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Sounds fair, then.  I will return soon.", "GiveThievingRunts")
	StartConversation(conversation, NPC, Spawn, "Eager to get into the fight, are you?  Well, I won't stop you, then... have at them.  I'll even give you a bounty for clearing some of the wretches out.  Bring me their ears as proof.  Come back to me when you've finished up, and we'll see how you do.  Now get to it.")
end

function GiveThievingRunts(NPC, Spawn)
	OfferQuest(NPC, Spawn, ThievingRunts)
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "The dangers here are unique, but it isn't anything we cannot deal with.", "converse", 1689589577, 4560189, Spawn)
--]]

