--[[
    Script Name    : SpawnScripts/Darklight/Maelixia.lua
    Script Author  : Cynnar
    Script Date    : 2016.08.12 02:08:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/tobias_granville/steppes/quests/quest_tobias_granville/tobias_granville001.mp3", "", "shrug", 2405099568, 1478987434, Spawn)
Say(NPC, "Testing Voiceover")
end

function respawn(NPC)

end

