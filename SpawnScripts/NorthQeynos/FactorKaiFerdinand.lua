--[[
    Script Name    : SpawnScripts/NorthQeynos/FactorKaiFerdinand.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 12:04:59
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Hail, citizen of Qeynos.  The Qeynos Guard protects!", "salute", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end