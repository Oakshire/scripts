--[[
    Script Name    : SpawnScripts/QueensColony/BankerBogfoot.lua
    Script Author  : Zcoretri
    Script Date    : 2015.07.30
    Script Purpose : Banker Bogfoot dialog
    Modified Date  : 2020.08.04
    Modified by: premierio015
    Notes      : Added animation
--]]

function spawn(NPC)
    hailed(NPC, Spawn)
	EmoteLoop(NPC)
end

function repsawn(NPC)
     spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "As a banker it is my job to hold items and coin for you for safe-keeping. If you would like to learn more, speak with Trainer Zidget Sprogrudder. She is just east of me, around the corner.", "", 0, 0, Spawn)
end

function EmoteLoop (NPC)
	PlayAnimation(NPC, 13008)
	AddTimer(NPC, 15000, "EmoteLoop")
end
