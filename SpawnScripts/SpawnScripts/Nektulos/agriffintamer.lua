--[[
	Script Name	: SpawnScripts/ThunderingSteppes/agriffontamer.lua
	Script Purpose	: a griffon tamer (2490000)
	Script Author	: Jabantiz
	Script Date	: 2014.07.14
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
    
	if GetSpawnLocationID(NPC) == 1214217 then
		AddConversationOption(con, "To Antonica Gates.", "DocksToAnt")
		AddConversationOption(con, "To South East Station.", "DocksToSE")
		AddConversationOption(con, "To Coldwind.", "DocksToCold")
		AddConversationOption(con, "To Thundermist Village.", "DocksToThundermist")
	elseif GetSpawnLocationID(NPC) == 1214218 then
	    AddConversationOption(con, "To Antonica Gate.", "SEToAnt")
	    AddConversationOption(con, "To Coldwind.", "SEToCold")
	    AddConversationOption(con, "To Thundermist Village.", "SEToThundermist")
	    AddConversationOption(con, "To Docks.", "SEToDocks")
	elseif GetSpawnLocationID(NPC) == 1214219 then
	    AddConversationOption(con, "To Thundermist Village.", "AntToThundermist")
	    AddConversationOption(con, "To South East Station.", "AntToSE")
	    AddConversationOption(con, "To Coldwind.", "AntToCold")
	elseif GetSpawnLocationID(NPC) == 1214220 then
	    AddConversationOption(con, "To Thundermist Village.", "ColdToThundermist")
	    AddConversationOption(con, "To South East Station.", "ColdToSE")
	    AddConversationOption(con, "To Antonica Gate.", "ColdToAnt")
	    AddConversationOption(con, "To Docks.", "ColdToDocks")
	elseif GetSpawnLocationID(NPC) == 1214221 then
	    AddConversationOption(con, "To Antonica Gate.", "ThundermistToAnt")
	    AddConversationOption(con, "To Coldwind.", "ThundermistToCold")
	    AddConversationOption(con, "To South East Station.", "ThundermistToSE")
	    AddConversationOption(con, "To Docks.", "ThundermistToDocks")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function DocksToAnt(NPC, Spawn)
	StartAutoMount(Spawn, 16)
	SetMount(Spawn, 225)
end

function DocksToSE(NPC, Spawn)
	StartAutoMount(Spawn, 15)
	SetMount(Spawn, 225)
end

function DocksToCold(NPC, Spawn)
	StartAutoMount(Spawn, 14)
	SetMount(Spawn, 225)
end

function DocksToThundermist(NPC, Spawn)
	StartAutoMount(Spawn, 13)
	SetMount(Spawn, 225)
end

function SEToAnt(NPC, Spawn)
	StartAutoMount(Spawn, 4)
	SetMount(Spawn, 225)
end

function SEToCold(NPC, Spawn)
	StartAutoMount(Spawn, 7)
	SetMount(Spawn, 225)
end

function SEToThundermist(NPC, Spawn)
	StartAutoMount(Spawn, 12)
	SetMount(Spawn, 225)
end

function SEToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 18)
	SetMount(Spawn, 225)
end

function AntToThundermist(NPC, Spawn)
	StartAutoMount(Spawn, 1)
	SetMount(Spawn, 225)
end

function AntToSE(NPC, Spawn)
	StartAutoMount(Spawn, 3)
	SetMount(Spawn, 225)
end

function AntToCold(NPC, Spawn)
	StartAutoMount(Spawn, 10)
	SetMount(Spawn, 225)
end

function ColdToThundermist(NPC, Spawn)
	StartAutoMount(Spawn, 6)
	SetMount(Spawn, 225)
end

function ColdToSE(NPC, Spawn)
	StartAutoMount(Spawn, 8)
	SetMount(Spawn, 225)
end

function ColdToAnt(NPC, Spawn)
	StartAutoMount(Spawn, 11)
	SetMount(Spawn, 225)
end

function ColdToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 19)
	SetMount(Spawn, 225)
end

function ThundermistToAnt(NPC, Spawn)
	StartAutoMount(Spawn, 2)
	SetMount(Spawn, 225)
end

function ThundermistToCold(NPC, Spawn)
	StartAutoMount(Spawn, 5)
	SetMount(Spawn, 225)
end

function ThundermistToSE(NPC, Spawn)
	StartAutoMount(Spawn, 9)
	SetMount(Spawn, 225)
end

function ThundermistToDocks(NPC, Spawn)
	StartAutoMount(Spawn, 17)
	SetMount(Spawn, 225)
end
--[[ raw_conversations
	PlayFlavor(NPC, "", "Fun, fun, fun! This big old tower, built for griffons, and yet... there just don't seem to be any around. Thinking about helping us out?", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "You can scramble 'em, boil 'em, fry 'em... oh, wait... were we talking about griffon eggs or chicken eggs?", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "I say... you haven't seen any griffon eggs around, have you? We sure could use some!", "", 1689589577, 4560189, Spawn)
--]]
