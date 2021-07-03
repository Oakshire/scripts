--[[
    Script Name    : SpawnScripts/ThievesWay/SaliVaah.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.02 09:07:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Isn't it dark down here?", "", 1689589577, 4560189, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end