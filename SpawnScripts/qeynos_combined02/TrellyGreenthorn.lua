--[[
    Script Name    : SpawnScripts/qeynos_combined02/TrellyGreenthorn.lua
    Script Author  : Rylec
    Script Date    : 2021.01.19 06:01:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1033.mp3", "", "", 0, 0, Spawn)

    text = math.random(1,2)

    if text == 1 then
        Say(NPC, "It's a travesty what has become of The Willow Wood.")
    else
        Say(NPC, "Thankfully, it's still peaceful here in the Province District, but the same can't be said for my home within the Willow Wood.")
    end
end

function respawn(NPC)
    spawn(NPC)
end

