--[[
    Script Name    : SpawnScripts/qeynos_combined02/PallaJhal.lua
    Script Author  : Rylec
    Script Date    : 2021.08.04 04:08:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1005.mp3", "True beauty has no age.", "", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end