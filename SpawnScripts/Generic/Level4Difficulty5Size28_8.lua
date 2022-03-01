--[[
        Script Name     :       SpawnScripts/Generic/Level4Difficulty5Size28_8.lua
	Script Purpose	:	Level set to 4 and and difficulty to 5
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
        SpawnSet(NPC, "difficulty", "5")  
        SpawnSet(NPC, "size", "28.8")
end

function hailed(NPC, Spawn)
        FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

