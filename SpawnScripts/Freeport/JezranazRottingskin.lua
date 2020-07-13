--[[
    Script Name    : SpawnScripts/Freeport/JezranazRottingskin.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 09:07:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/jezranaz_rottingskin/fprt_hood01/jezranazrottingskin000.mp3", "", "", 304055100, 199645713, Spawn)
    AddConversationOption(conversation, "Uh, I don't know, but it sure looks like you need one.")
    StartConversation(conversation, NPC, Spawn, "Curses, where is da doctor in the district?")
end

function EmoteLoop (NPC)
        local choice = math.random(1, 2)
        if choice == 1 then
	PlayAnimation(NPC, 308)
	AddTimer(NPC, 7000, "EmoteLoop")
        else
        PlayAnimation(NPC, 11676)
        AddTimer(NPC, 7000, "EmoteLoop")
    end
end

function respawn(NPC)
         spawn(NPC)
end

