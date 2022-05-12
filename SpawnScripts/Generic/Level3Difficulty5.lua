--[[
        Script Name     :       SpawnScripts/Generic/Level3Difficulty5.lua
	Script Purpose	:	Level set to 3 and and difficulty to 5
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:22 
	Script Notes	:	Locations collected from Live 
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3") 
        SpawnSet(NPC, "difficulty", "5") 
        SpawnSet(NPC, "hp", 45)
        SpawnSet(NPC, "power", 30)
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end
