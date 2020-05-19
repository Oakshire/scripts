--[[
    Script Name    : Spells/Priest/Druid/Warden/HierophanticGenesis.lua
    Script Author  : neatz09
    Script Date    : 2019.10.15 05:10:53
    Script Purpose : 
                   : 
--]]


-- Heals target for 547 - 668 instantly and every 2 seconds
-- Increases power of target by 43 - 52 instantly and every 2 seconds

function cast(Caster, Target, MinHeal, MaxHeal, MinPwr, MaxPwr)
SpellHeal("Heal", MinHeal, MaxHeal)
SpellHeal("Power", MinPwr, MaxPwr)
end


function tick(Caster, Target, MinHeal, MaxHeal, MinPwr, MaxPwr)
SpellHeal("Heal", MinHeal, MaxHeal)
SpellHeal("Power", MinPwr, MaxPwr)
end
