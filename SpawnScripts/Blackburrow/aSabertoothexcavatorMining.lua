--[[
    Script Name    : SpawnScripts/Blackburrow/aSabertoothexcavatorMining.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.04.26 09:04:36
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/SabertoothGnoll2.lua")
 	
 
function spawn(NPC)
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
    PlayAnimation(NPC,10784)
    end
    AddTimer(NPC, math.random(3000,6000), "AttackRocks")
end 