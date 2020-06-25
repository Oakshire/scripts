--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769446.lua
	Script Purpose	:	Level and difficulty for amorakdevourer133769446.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3") 
        SpawnSet(NPC, "difficulty", "2")  
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

