--[[
    Script Name    : SpawnScripts/Antonica/abloodsaberseditionist.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.14 10:07:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end