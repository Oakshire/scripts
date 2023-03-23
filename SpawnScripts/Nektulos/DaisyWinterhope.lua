--[[
    Script Name    : SpawnScripts/Nektulos/DaisyWinterhope.lua
    Script Author  : Premierio015
    Script Date    : 2023.03.23 09:03:29
    Script Purpose : 
                   : 
--]]

local MaidForTheMistPartI = 5793

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end