--[[
    Script Name    : SpawnScripts/ScaleYard/NotFound.lua
    Script Author  : Jabantiz
    Script Date    : 2018.06.18 02:06:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

