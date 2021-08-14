--[[
    Script Name    : SpawnScripts/qeynos_combined02/PreservationistReynolds.lua
    Script Author  : Rylec
    Script Date    : 2021.08.13 03:08:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1047.mp3", "...", "hello", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end