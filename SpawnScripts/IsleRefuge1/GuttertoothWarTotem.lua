--[[
    Script Name    : SpawnScripts/IsleRefuge1/GuttertoothWarTotem.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.06 02:09:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
stunned(NPC)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function stunned(NPC)
SetInvulnerable(NPC)
end