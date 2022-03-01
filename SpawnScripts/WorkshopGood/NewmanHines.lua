--[[
    Script Name    : SpawnScripts/WorkshopGood/NewmanHines.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.29 06:05:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1052.mp3", "", "hello", 0, 0, Spawn)
end

function respawn(NPC)

end

