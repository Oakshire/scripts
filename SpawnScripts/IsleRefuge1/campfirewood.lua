--[[
    Script Name    : SpawnScripts/IsleRefuge1/campfirewood.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.18 08:09:26
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
--SetPlayerProximityFunction(NPC, 3, "InRange", "LeaveRange")
end

function respawn(NPC)
    spawn(NPC)
end


function InRange(NPC,Spawn,Zone)
    SetTempVariable(NPC,"Fire","Burning")
    FireRange = true
    if IsNight(GetZone(NPC))==true and Fire == Burning then
    TakeFireDamage(Spawn)   
    AddTimer(NPC,3000,"InRange",1,Spawn)
   end
end

function LeaveRange(NPC,Spawn)
SetTempVariable(NPC,"Fire",nil)

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