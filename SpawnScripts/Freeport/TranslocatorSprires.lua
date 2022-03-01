--[[
    Script Name    : TranslocatorSpires.lua
    Script Author  : neatz09
    Script Date    : 2020.08.29 07:08:57
    Script Purpose : used in spell script for translocate
                   : 
--]]
function spawn(NPC)
	AddTimer(NPC, 60000, "despawn")
end

function despawn(NPC, Spawn)
	Despawn(NPC)
end