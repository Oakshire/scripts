--[[
    Script Name    : SpawnScripts/ScaleYard/unnamed.lua
    Script Author  : Jabantiz
    Script Date    : 2018.06.18 02:06:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

