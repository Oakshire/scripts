--[[
    Script Name    : SpawnScripts/IsleRefuge1/Greybeard.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.13 04:09:04
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseSkeleton2.lua")

function spawn(NPC)
    SetSpawnAnimation(NPC, 13016)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end