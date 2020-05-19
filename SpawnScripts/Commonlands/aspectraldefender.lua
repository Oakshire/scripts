--[[
    Script Name    : SpawnScripts/Commonlands/aspectraldefender.lua
    Script Author  : gloat
    Script Date    : 2019.01.30 09:01:15
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/MovementCircleSmall"

function spawn(NPC)
    SpawnChooseRandomMovement(NPC)
	--[[if GetSpawnLocationID(NPC) == 272418 then
		MovementLoopAddLocation(NPC, -1302.65, -73.65, -218.35, 2, math.random(3,4))
		MovementLoopAddLocation(NPC, -1285.33, -73.75, -221.20, 2, math.random(1,7))
		MovementLoopAddLocation(NPC, -1302.65, -73.65, -218.35, 2, math.random(3,4))
	end]]
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

