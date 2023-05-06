--[[
    Script Name    : SpawnScripts/Antonica/apilesofbones.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.05 06:05:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,MakeRandomInt(120000,720000),"InitialDespawn")
end

function InitialDespawn(NPC, Spawn)
	Despawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end