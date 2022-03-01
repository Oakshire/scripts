--[[
    Script Name    : Spells/Commoner/ArcaneChalice.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 08:04:01
    Script Purpose : 
                   : 
--]]

-- Increase Power of Group Member by x - y based on Clevel

function cast(Caster, Target, MinVal, MaxVal)
local Val1 = (GetLevel(Caster) * 1.08) * MinVal
local Val2 = (GetLevel(Caster) * 1.08) * MaxVal
local PwrAmt = randomFloat(Val1, Val2)
SpellHeal("Power", PwrAmt)
end

function randomFloat(Val1, Val2)
    return Val1 + math.random()  * (Val2 - Val1);
end
