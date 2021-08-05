--[[
    Script Name    : SpawnScripts/qeynos_combined02/GuardDelin.lua
    Script Author  : Rylec
    Script Date    : 2021.08.05 09:08:24
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local voice = MakeRandomInt(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1006.mp3", "We appreciate your help!", "bow", 0, 0, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
