--[[
    Script Name    : SpawnScripts/fprt_ph_5r01/InanaVSorn.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.03 04:06:48
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