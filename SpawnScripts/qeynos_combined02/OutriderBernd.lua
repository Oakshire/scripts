--[[
    Script Name    : SpawnScripts/qeynos_combined02/OutriderBernd.lua
    Script Author  : Rylec
    Script Date    : 2021.08.07 02:08:37
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1004.mp3", "", "hello", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end