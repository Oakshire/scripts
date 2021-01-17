--[[
    Script Name    : SpawnScripts/qeynos_combined02/HargroveLeafsway.lua
    Script Author  : Rylec
    Script Date    : 2021.01.16 04:01:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
	math.randomseed(os.time())
	voice = math.random (1,3)

        PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1054.mp3", "I'm sorry citizen, but it is unsafe to enter The Willow Wood just now. A well organized group of gnolls has invaded and we are awaiting reinforcements from the Queen.", "", 0, 0, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

