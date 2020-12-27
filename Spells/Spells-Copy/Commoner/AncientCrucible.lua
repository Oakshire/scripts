--[[
    Script Name    : Spells/Commoner/AncientCrucible.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 08:04:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HealMin, HealMax, PowerMin, PowerMax)
local Val1 = (GetLevel(Caster) * 1.08) * HealMin
local Val2 =  (GetLevel(Caster) * 1.08) * HealMax
local Val3 =  (GetLevel(Caster) * 1.08) * PowerMin
local Val4 =  (GetLevel(Caster) * 1.08) * PowerMax  
local HealAmt = randomFloat(Val1, Val2)
local PowerAmt = randomFloat2(Val3, Val4)

SpellHeal("Heal", HealAmt)
SpellHeal("Power", PowerAmt)
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end

function randomFloat2(Val3, Val4)
    return Val3 + math.random()  * (Val4 - Val3);
end