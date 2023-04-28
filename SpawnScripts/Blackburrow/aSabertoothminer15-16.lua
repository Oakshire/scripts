--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothminer15-16.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.04.27 08:04:59
    Script Purpose : 
                   : 
--]]

	dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
 	
 local TheChomper = 5696

function spawn(NPC)
    local Level = math.random(15,16)
    local level1 = 15
    local level2 = 16
    local difficulty1 = 8
    local hp1 = 1905
    local power1 = 640
    local difficulty2 = 8
    local hp2 = 2180
    local power2 = 670
    if Level == level1 then
    SpawnSet(NPC, "level", level)
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "level", level)
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
    
    
    
    
        AddTimer(NPC,math.random(2500,6000),"AttackRocks")

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
if QuestIsComplete(Spawn, TheChomper) or HasItem(Spawn, 1285) then
RemoveLootItem(NPC, 1285) 
  end
end

function AttackRocks(NPC)
    if not IsInCombat(NPC) then
    PlayAnimation(NPC,10784)
    end
    AddTimer(NPC, math.random(3000,6000), "AttackRocks")
end 