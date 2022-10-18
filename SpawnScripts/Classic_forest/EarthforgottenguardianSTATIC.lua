--[[
    Script Name    : SpawnScripts/Classic_forest/EarthforgottenguardianSTATIC.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.15 08:10:54
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGolem1.lua")

function spawn(NPC)
    SetSpawnAnimation(NPC, 13016)

    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local level3 = 11
    local difficulty1 = 7
    local hp1 = 370
    local power1 = 160
    local difficulty2 = 7
    local hp2 = 430
    local power2 = 200
    local difficulty3 =7
    local hp3 = 580
    local power3 = 240
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end
    
    AddTimer(NPC,4000,"ResetAnimation",1)


end



function respawn(NPC)
	spawn(NPC)
end