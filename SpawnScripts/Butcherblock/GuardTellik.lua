--[[
	Script Name	: SpawnScripts/ButcherblockMountains/GuardTellik.lua
	Script Purpose	: Guard Tellik 
	Script Author	: jakejp
	Script Date	: 2018.06.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local NecessaryPrecautions = 273

function spawn(NPC)
	ProvidesQuest(NPC, NecessaryPrecautions)
end

function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasCompletedQuest(Spawn, NecessaryPrecautions) == false and HasQuest(Spawn, NecessaryPrecautions) == false and CanReceiveQuest(Spawn, NecessaryPrecautions) == true then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Really?  Why is that?", "dlg_2_1")
		AddConversationOption(conversation, "I imagine.  Farewell.")
		StartConversation(conversation, NPC, Spawn, "So this is Faydwer.  There have always been stories in Gorowyn about this place, but I never thought I would see it.  It's no Timorous Deep of course, but it is beautiful in its own right.  Coming here was a challenge all by itself, but it has proven to be quite difficult to remain here.")
	elseif GetQuestStep(Spawn, NecessaryPrecautions) == 1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1003.mp3", "", "", 0, 0, Spawn)
		Say(NPC, "Whether here or home in Gorowyn, my duty does not change.")
	elseif HasCompletedQuest(Spawn, NecessaryPrecautions) == true then
		Say(NPC, "Whether here or home in Gorowyn, my duty does not change.")
	else
		Say(NPC, "Whether here or home in Gorowyn, my duty does not change.")
	end
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	AddConversationOption(conversation, "That is frustrating.  What are you planning to do, then?", "dlg_2_2")
	AddConversationOption(conversation, "I'm sorry to hear that.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "A myriad of reasons, but not the least of which are the dwarves.  They have claim over much of the Butcherblock Mountains, and quite loathe to have anyone they consider to be intruders on their lands.  They haven't been openly hostile as of yet, but sending out patrols at this point would certainly not be a good plan, given how few in number we are... if the dwarves did not take kindly to what they see as trespassing, it could be disastrous for us.")
end

function dlg_2_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Hire?  As a negotiator?", "dlg_2_3")
		AddConversationOption(conversation, "I'm not really interested.  Farewell.")
	StartConversation(conversation, NPC, Spawn, "It may be imperative to our continued presence here that we establish some kind of cooperation with the dwarves.  Unfortunately, our numbers here are fairly small, and we don't have anyone who might be able to begin the negotiations necessary.  I know this probably isn't normally what you do, but might you be available for hire?")
end

function dlg_2_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Well, it couldn't hurt to see what I can get done, then.  Farewell.", "GiveNecessaryPrecautions")
	StartConversation(conversation, NPC, Spawn, "Something like that, yes.  All I really need you to do is speak with the assistant dockmaster, and give her a note from us.  I know she has worked with Emissary Raghuntha, and might be more amicable to our offer.  Perhaps if you can perform deeds for others on the docks, it will show the dwarves that we are serious about our offer for cooperation.  And I'm sure there will be plenty of reward in it for you, too.")
end

function GiveNecessaryPrecautions(NPC, Spawn)
	OfferQuest(NPC, Spawn, NecessaryPrecautions)
end