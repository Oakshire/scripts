--[[
    Script Name    : SpawnScripts/Caves/BurningFireinvisiblecube.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.12 09:10:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 1, "InRange", "LeaveRange")
end

function respawn(NPC)
    spawn(NPC)
end


function InRange(NPC,Spawn,Zone)
 if GetDistance(NPC,Spawn)<1 then
 SpawnSet(Spawn,"visual_state",492)
    TakeFireDamage(Spawn)   
	SendMessage(Spawn, "You are burning!", "red")
    AddTimer(NPC,3000,"InRange",1,Spawn)
    end
end


function LeaveRange(NPC,Spawn)
    SpawnSet(Spawn,"visual_state",0)
end

function TakeFireDamage(Spawn)
local invul = IsInvulnerable(Spawn)
if invul == true then
return 0
end

local hp = GetHP(Spawn)
local damage = GetMaxHP(Spawn)*0.05
local damageToTake = damage * 1
-- if we don't have enough HP make them die to pain and suffering not self
if hp <= damageToTake then
KillSpawn(Spawn, null, 1)
else
DamageSpawn(Spawn, Spawn, 192, 3, damageToTake, damageToTake, "Fire!", 0, 0, 1, 1)
end
end



function Tick(Zone, Spawn, RegionType)

TakeFireDamage(Spawn)

-- returning 1 would stop the Tick process until Spawn leaves/re-enters region
return 0
end