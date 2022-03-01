--[[
    Script Name    : Spells/Commoner/CelestialBloom.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 08:04:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HealMin, HealMax)
local Val1 = (GetLevel(Caster) * 1.08) * HealMin
local Val2 =  (GetLevel(Caster) * 1.08) * HealMax 
local HealAmt = randomFloat(Val1, Val2)

SpellHeal("Heal", HealAmt)
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end