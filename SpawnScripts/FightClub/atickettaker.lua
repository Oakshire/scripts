--[[
    Script Name    : SpawnScripts/FightClub/atickettaker.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 12:10:37
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "No admittance to the arena unless you have a ticket!", "no", 0, 0, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end