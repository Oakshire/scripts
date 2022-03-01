--[[
    Script Name    : Spells/Commoner/ChaliceofLife.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 01:04:32
    Script Purpose : 
                   : 
--]]

-- Wards target against 5118 points of all damage

function cast(Caster, Target, Ward, HealMin, HealMax, TickMin, TickMax)
local Val1 = (GetLevel(Caster) * 1.08) * HealMin
local Val2 =  (GetLevel(Caster) * 1.08) * HealMax
local Val3 =  (GetLevel(Caster) * 1.08) * TickMin
local Val4 =  (GetLevel(Caster) * 1.08) * TickMax  
local HealAmt = randomFloat(Val1, Val2)
local TickAmt = randomFloat2(Val3, Val4)

AddWard((GetLevel(Caster) * 1.08) * Ward, 0, 0)
SpellHeal("Heal", HealAmt) 
end

function tick(Caster, Target, Ward, HealMin, HealMax, TickMin, TickMax)
SpellHeal("Heal", TickAmt)
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end

function randomFloat2(Val3, Val4)
    return Val3 + math.random()  * (Val4 - Val3);
end

function remove(Caster, Target)
RemoveWard()
end
