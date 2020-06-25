--[[
    Script Name    : SpawnScripts/OutpostOverlord/aTunareWolfmaster.lua
    Script Author  : Cynnar
    Script Date    : 2017.01.15 01:01:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Say(NPC, "Testing hail function")
end

function respawn(NPC)
	spawn(NPC)
end

