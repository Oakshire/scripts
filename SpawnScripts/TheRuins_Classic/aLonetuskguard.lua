--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskguard.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.27 02:06:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 80
    local difficulty2 = 6
    local hp2 = 200
    local power2 = 90
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
    PlayAnimation(NPC,891) elseif
        x == 2 or x == 3 then
            PlayAnimation(NPC,11663)
    end
    AddTimer(NPC, math.random(10000,20000), "Animation")
    end
end