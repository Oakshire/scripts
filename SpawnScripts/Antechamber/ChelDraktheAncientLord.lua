--[[
    Script Name    : SpawnScripts/Antechamber/ChelDraktheAncientLord.lua
    Script Author  : neatz09
    Script Date    : 2021.03.19 10:03:42
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

