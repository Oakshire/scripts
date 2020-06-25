--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769433.lua
	Script Purpose	:	Level and difficulty for ataintedSapswillscout133769433.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3") 
        SpawnSet(NPC, "difficulty", "5")  
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

