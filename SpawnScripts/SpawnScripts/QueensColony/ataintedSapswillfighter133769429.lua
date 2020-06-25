--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillfighter133769429.lua
	Script Purpose	:	Level and difficulty for ataintedSapswillfighter133769429.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
        SpawnSet(NPC, "difficulty", "5")  
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

