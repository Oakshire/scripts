--[[
    Script Name    : SpawnScripts/ScaleYard/zonetosprawl.lua
    Script Author  : Jabantiz
    Script Date    : 2018.06.18 02:06:15
    Script Purpose : Dummy spawn for 1208+ clients so they can see the zone to the sprawl, hide on every one else
                   : 
--]]

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
end

function respawn(NPC)
	spawn(NPC)
end

