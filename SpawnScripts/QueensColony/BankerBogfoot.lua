--[[
    Script Name    : SpawnScripts/QueensColony/BankerBogfoot.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Banker Bogfoot dialog
    Modified Date  : 2020.08.04
    Modified by    : premierio015
    Notes          : Added animation
--]]

function spawn(NPC)
end

function repsawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    choice = math.random (1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..choice.."_1040.mp3", "As a banker it is my job to hold items and coin for you for safe-keeping. If you would like to learn more, speak with Trainer Zidget Sprogrudder. She is just east of me, around the corner.", "", 0, 0, Spawn)
end