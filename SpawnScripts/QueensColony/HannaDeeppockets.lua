--[[
    Script Name    : SpawnScripts/QueensColony/HannaDeeppockets.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Hanna Deeppockets dialog
    Modified Data  : 2020.04.04
    Modiefied by   : premierio015
    Notes          : All VoiceOvers addded
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1019.mp3", "", "", 0, 0, Spawn)

    text = math.random(1,2)

    if text == 1 then
        Say(NPC, "All your basic necessities you'll find here.")
    else
        Say(NPC, "The Deeppockets have a long history of good deals, ask anyone!")	
    end
end