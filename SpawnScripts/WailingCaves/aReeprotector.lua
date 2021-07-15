--[[
    Script Name    : SpawnScripts/WailingCaves/aReeprotector.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.14 06:07:51
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

function aggro(NPC, Spawn)
CastSpell(Spawn, 230170, 1, NPC)
end




