--[[
    Script Name    : SpawnScripts/The Sepulcher of Jahnda/adesecratedremains.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.23 03:10:00
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



 
function prespawn(NPC)
SetSpawnAnimation(NPC, 13016)
end    