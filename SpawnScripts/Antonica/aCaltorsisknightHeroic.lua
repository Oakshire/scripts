--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisknightHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.02 08:02:15
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet (NPC, "heroic", 1)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end