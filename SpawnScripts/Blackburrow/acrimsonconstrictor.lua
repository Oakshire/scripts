--[[
    Script Name    : SpawnScripts/Blackburrow/acrimsonconstrictor.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.15 04:07:48
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