--[[
    Script Name    : SpawnScripts/qeynos_combined02/BungleProudfoot.lua
    Script Author  : Rylec
    Script Date    : 2021.01.25 05:01:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1026.mp3", "", "", 0, 0, Spawn)

    PlayAnimation(NPC, 12192)
    Say(NPC, "Eh, e... xcuse me? What? Huh? Can I help you? No.. No... Too much to do. Arrrgg!")
end

function respawn(NPC)
    spawn(NPC)
end

