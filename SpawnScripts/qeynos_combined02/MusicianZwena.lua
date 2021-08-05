--[[
    Script Name    : SpawnScripts/qeynos_combined02/MusicianZwena.lua
    Script Author  : Rylec
    Script Date    : 2021.08.04 12:08:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "visual_state", "11420")
    SpawnSet(NPC, "action_state", "10989")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1047.mp3", "", "", 0, 0, Spawn)

    conversation = CreateConversation()
    
    AddConversationOption(conversation, "Not today, thanks.")
    StartConversation(conversation, NPC, Spawn, "Perhaps I could entertain you with a song?")
end

function respawn(NPC)
	spawn(NPC)
end