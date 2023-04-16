--[[
    Script Name    : SpawnScripts/Blackburrow/ablightfanghatchling.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.27 08:07:47
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