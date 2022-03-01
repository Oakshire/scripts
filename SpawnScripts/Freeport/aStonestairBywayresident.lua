--[[
    Script Name    : SpawnScripts/Freeport/aStonestairBywayresident.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.14 06:07:16
    Script Purpose : 
                   : 
--]]




function spawn(NPC)

end

function hailed(NPC, Spawn)
   FaceTarget(NPC, Spawn)
   PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1011.mp3", "", "hello", 1689589577, 4560189, Spawn)
end

function respawn(NPC)

end

