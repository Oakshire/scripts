--[[
    Script Name    : SpawnScripts/qeynos_combined02/TrayloLeafsway.lua
    Script Author  : Rylec
    Script Date    : 2021.01.25 06:01:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1022.mp3", "Greetings citizen.  Please see me if you have any armor from Gildas that you wish to be rid of, I have some newer armor that may interest you. ", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

