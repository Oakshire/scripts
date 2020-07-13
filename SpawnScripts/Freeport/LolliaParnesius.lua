--[[
    Script Name    : SpawnScripts/Freeport/LolliaParnesius.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 10:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/lollia_parnesius/fprt_east/mer_lolliaparnesius.mp3", "", "", 2582198165, 1582491385, Spawn)
    AddConversationOption(conversation, "I would sooner use the quill to stab you than to write with it...")
    StartConversation(conversation, NPC, Spawn, "Oh, hello there! Perhaps my eyes fail me, but you look like you're handy with a quill. Can you do some scribe work for me?")
end

function respawn(NPC)

end

