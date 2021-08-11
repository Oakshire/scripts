--[[
    Script Name    : SpawnScripts/WailingCaves/aRaiderofReeTest.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.10 05:08:34
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