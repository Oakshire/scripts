--[[
	Script Name	: SpawnScripts/Commonlands/agriffontamer.lua
	Script Purpose	: a griffin tamer (330209)
	Script Author	: Neatz09
	Script Date	: 2/5/2019
	Script Notes	: 
--]]


function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1052.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "I am fine staying here, thanks.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local con = CreateConversation()
    
	if GetSpawnLocationID(NPC) == 295729 then
		AddConversationOption(con, "To Freeport Station.", "NekToFreeport")
		AddConversationOption(con, "To Hidden Canyon Station.", "NekToCanyon")
	elseif GetSpawnLocationID(NPC) == 295727 then
	    AddConversationOption(con, "To Hidden Canyon Station.", "FreeportToCanyon")
	    AddConversationOption(con, "To Nektulos Forest Staion", "FreeportToNek")
	elseif GetSpawnLocationID(NPC) == 295728 then
	    AddConversationOption(con, "To Freeport Station.", "CanyonToFreeport")
	    AddConversationOption(con, "To Nektulos Station.", "CanyonToNek")
	
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function NekToFreeport(NPC, Spawn)
	StartAutoMount(Spawn, 172)
	SetMount(Spawn, 225)
end

function NekToCanyon(NPC, Spawn)
	StartAutoMount(Spawn, 171)
	SetMount(Spawn, 225)
end

function FreeportToCanyon(NPC, Spawn)
	StartAutoMount(Spawn, 169)
	SetMount(Spawn, 225)
end

function FreeportToNek(NPC, Spawn)
	StartAutoMount(Spawn, 170)
	SetMount(Spawn, 225)
end

function CanyonToFreeport(NPC, Spawn)
	StartAutoMount(Spawn, 167)
	SetMount(Spawn, 225)
end

function CanyonToNek(NPC, Spawn)
	StartAutoMount(Spawn, 168)
	SetMount(Spawn, 225)
end

--[[ raw_conversations
	PlayFlavor(NPC, "", "Fun, fun, fun! This big old tower, built for griffons, and yet... there just don't seem to be any around. Thinking about helping us out?", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "You can scramble 'em, boil 'em, fry 'em... oh, wait... were we talking about griffon eggs or chicken eggs?", "", 1689589577, 4560189, Spawn)
	PlayFlavor(NPC, "", "I say... you haven't seen any griffon eggs around, have you? We sure could use some!", "", 1689589577, 4560189, Spawn)
--]]
