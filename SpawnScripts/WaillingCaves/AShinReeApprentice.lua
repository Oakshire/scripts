--[[
    Script Name    : SpawnScripts/WaillingCaves/AShinReeApprentice.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.22 09:05:53
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/OrcSkeletonVoiceOvers.lua")

function spawn(NPC)

end

function hailed(NPC, Spawn)
    
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC, Spawn)
generic_aggro(NPC, Spawn)
end

function death(NPC, Spawn)
generic_death(NPC, Spawn)
end