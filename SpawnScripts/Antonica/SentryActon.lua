--[[
    Script Name    : SpawnScripts/Antonica/SentryActon.lua
    Script Author  : Premierio015
    Script Date    : 2022.05.09 12:05:14
    Script Purpose : 
                   : 
--]]

    local greetingsTable = { "voiceover/english/voice_emotes/greetings/greetings_1_1034.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_2_1034.mp3",
    						 "voiceover/english/voice_emotes/greetings/greetings_3_1034.mp3"};

function spawn(NPC)

end

function hailed(NPC, Spawn)
    PlayFlavor(NPC, greetingsTable[math.random(#greetingsTable)], "", "", 0, 0, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks for the advice!")
	StartConversation(conversation, NPC, Spawn, "Watch yourself out here. All kinds of bad things can happen - never know when a gnoll might sneak up behind ya and  ... GRAB ya!")
end

function respawn(NPC)
	spawn(NPC)
end