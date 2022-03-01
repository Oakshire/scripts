--[[
	Script Name	: SpawnScripts/Antonica/AGriffonTamer.lua
	Script Purpose	: a griffon tamer (2490000)
	Script Author	: Neatz09
	Script Date	: 2/5/19
	Script Notes	: 
--]]

local GriffonEggs = 112

function spawn(NPC)
	ProvidesQuest(NPC, GriffonEggs)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if CanReceiveQuest(Spawn, GriffonEggs) then
		-- Start Quest
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I was wondering if there were any errands you needed help with.", "dlg_0_1")
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	elseif GetQuestStep(Spawn, GriffonEggs) == 2 then
		-- Turn in the quest
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1004.mp3", "", "", 0, 0, Spawn)
		SetStepComplete(Spawn, GriffonEggs, 2)
		AddConversationOption(conversation, "I hope she grows up healthy and strong!")
		StartConversation(conversation, NPC, Spawn, "Oh, my, that's a gorgeous egg! Let me just put it down right over here. Our thanks, it's going to be rough for the handlers to raise all these!")
	else
		-- Finished Quest
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		
	AddConversationOption(conversation, "They certainly have. These look very sturdy, but I don't see many griffins about.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "It's been a real treat watching this tower be built by all the artisans. They've done a marvelous job getting it ready for our flying friends.")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "So if you had some more griffons, the scheduling would be better?", "dlg_0_3")
	AddConversationOption(conversation, "This sounds like a scheduling problem I don't want anything to do with.")
	StartConversation(conversation, NPC, Spawn, "These towers were built very fast, and we were unable to get the griffin stock up to what it should be. This has made scheduling flights very difficult.")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Sure, sounds like a deal.", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Oh, certainly. But they've got to be trained properly from birth, really. I'll tell you what, if you grab an unhatched griffin egg and return it to any of us tamers, you will be rewarded handsomely. How's that sound?")
end

function dlg_0_4(NPC, Spawn)
	OfferQuest(NPC, Spawn, GriffonEggs)
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local con = CreateConversation()
    
	if GetSpawnLocationID(NPC) == 182250 then
		AddConversationOption(con, "To Steppes Station.", "QeynosToSteppes")
		AddConversationOption(con, "To Oracle Station.", "QeynosToOracle")
	elseif GetSpawnLocationID(NPC) == 182249 then
	    AddConversationOption(con, "To Qeynos Station.", "OracleToQeynos")
	    AddConversationOption(con, "To Steppes Station.", "OracleToSteppes")
	elseif GetSpawnLocationID(NPC) == 182248 then
	    AddConversationOption(con, "To Qeynos Station.", "SteppesToQeynos")
	    AddConversationOption(con, "To Oracle Station.", "SteppesToOracle")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function QeynosToSteppes(NPC, Spawn)
	StartAutoMount(Spawn, 84)
	SetMount(Spawn, 225)
end

function QeynosToOracle(NPC, Spawn)
	StartAutoMount(Spawn, 85)
	SetMount(Spawn, 225)
end

function OracleToQeynos(NPC, Spawn)
	StartAutoMount(Spawn, 88)
	SetMount(Spawn, 225)
end

function OracleToSteppes(NPC, Spawn)
	StartAutoMount(Spawn, 89)
	SetMount(Spawn, 225)
end

function SteppesToQeynos(NPC, Spawn)
	StartAutoMount(Spawn, 86)
	SetMount(Spawn, 225)
end

function SteppesToOracle(NPC, Spawn)
	StartAutoMount(Spawn, 87)
	SetMount(Spawn, 225)
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Fun, fun, fun! This big old tower, built for griffons, and yet... there just don't seem to be any around. Thinking about helping us out?", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "You can scramble 'em, boil 'em, fry 'em... oh, wait... were we talking about griffon eggs or chicken eggs?", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "I say... you haven't seen any griffon eggs around, have you? We sure could use some!", "", 1689589577, 4560189, Spawn)
--]]
