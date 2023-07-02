--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskshamanHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.01 07:07:12
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end