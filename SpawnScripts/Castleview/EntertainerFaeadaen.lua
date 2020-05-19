--[[
	Script Name	: SpawnScripts/Castleview/EntertainerFaeadaen.lua
	Script Purpose	: Entertainer Faeadaen 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

local Quest = 238
function spawn(NPC)
    ProvidesQuest(NPC, Quest)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/entertainer_faeadaen/qey_village04/100_entertainer_faeadaen_multhail2_2d3351bb.mp3", "Step up and watch as I make lights dance and coins disappear into thin air!", "flirt", 3189499038, 1784304503)
    local con = CreateConversation()
    AddConversationOption(con, "I want a quest", "GiveQuest")
    AddConversationOption(con, "Nothing, goodbye.")
    StartConversation(con, NPC, Spawn, "Hello, what can I do for you today?")
end

function GiveQuest(NPC, Spawn)
	OfferQuest(NPC, Spawn, Quest)
end

function AcceptedQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	local con = CreateConversation()
	AddConversationOption(con, "You won't.")
	StartConversation(con, NPC, Spawn, "I hope I won't regret this.")
end