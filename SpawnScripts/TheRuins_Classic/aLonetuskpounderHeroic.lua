--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskpounderHeroic.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.07.01 07:07:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SpawnSet(NPC, "heroic", 1)
    AddTimer(NPC,math.random(2500,6000),"AttackRocks")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function AttackRocks(NPC)
    if not IsInCombat(NPC) then
    PlayAnimation(NPC,13063)
    end
    AddTimer(NPC, math.random(6000,10000), "AttackRocks")
end  