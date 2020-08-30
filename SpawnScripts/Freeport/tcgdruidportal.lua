--[[
    Script Name    : SpawnScripts/Freeport/tcgdruidportal.lua
    Script Author  : neatz09
    Script Date    : 2020.08.29 07:08:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddTimer(NPC, 60000, "despawn")
end

function despawn(NPC, Spawn)
	Despawn(NPC)
end