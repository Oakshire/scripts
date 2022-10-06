--[[
	Script Name	: SpawnScripts/Caves/aMudpawguard.lua
	Script Purpose	: a Mudpaw guard 
	Script Author	: LordPazuzu
	Script Date	: 10/4/2022
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 240
    local power1 = 100
    local difficulty2 = 6
    local hp2 = 290
    local power2 = 110
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end

end

function respawn(NPC, Spawn)
    spawn(NPC)
end

