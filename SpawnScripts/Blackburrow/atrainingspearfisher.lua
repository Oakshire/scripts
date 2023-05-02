--[[
    Script Name    : SpawnScripts/Blackburrow/atrainingspearfisher.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.02 03:05:08
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)
        AddTimer(NPC,6000,"AttackRocks")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function AttackRocks(NPC)
    if not IsInCombat(NPC) then
    PlayAnimation(NPC,10783)
    end
    AddTimer(NPC, 3000, "AttackRocks")
end 