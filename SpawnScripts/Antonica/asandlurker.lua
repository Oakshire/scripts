--[[
    Script Name    : SpawnScripts/Antonica/asandlurker.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.11 11:07:54
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