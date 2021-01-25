--[[
    Script Name    : SpawnScripts/qeynos_combined02/ShireenFarenDelnara.lua
    Script Author  : Rylec
    Script Date    : 2021.01.24 04:01:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 12, "InRange")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1061.mp3", "", "", 0, 0, Spawn)
    InRange(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function InRange(NPC)
    PlayFlavor(NPC, "", "Ayr'Dal are brave, even when we are scared.", "nod", 0, 0, Spawn)
end

