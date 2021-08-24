--[[
    Script Name    : SpawnScripts/ShatteredVale3/invisiblecube1.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.23 08:08:04
    Script Purpose : 
                   : 
--]]

local WindstalkerGrizzly = 361978

function spawn(NPC)

end



function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end





function respawn(NPC)
	spawn(NPC)
end