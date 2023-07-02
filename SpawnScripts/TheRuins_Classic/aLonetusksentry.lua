--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetusksentry.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.02 02:07:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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
    AddTimer(NPC, math.random(2500,6000), "Animation")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function Animation(NPC)
    local x = math.random(1,3)
        if not IsInCombat(NPC) then
    if x == 1 then
        PlayAnimation(NPC,11976) else
            PlayAnimation(NPC,12325)
    end
    AddTimer(NPC, math.random(10000,20000), "Animation")
    end
end