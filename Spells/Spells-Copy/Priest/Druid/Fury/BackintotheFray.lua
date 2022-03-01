--[[
    Script Name    : Spells/Priest/Druid/Fury/BackintotheFray.lua
    Script Author  : neatz09
    Script Date    : 2019.10.28 06:10:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, OverMin, OverMax, UnderMin, UnderMax)
-- Heals target for 402 - 491
--     If over 50% Health
-- Heals target for 804 - 982
--     If under 50% Health
if GetHP(Target) > GetPCTOfHP(Target, 50) then 
SpellDamage(Target, Heal, OverMin, OverMax)   
else
        SpellDamage(Target, UnderMin, UnderMax)
    end

end
