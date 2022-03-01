--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/ManaSieve.lua
    Script Author  : neatz09
    Script Date    : 2019.10.18 08:10:11
    Script Purpose : 
                   : 
--]]
-- Inflicts 268 - 446 disease damage on target
-- Inflicts 67 - 112 disease damage on target every 4 seconds
-- Increases power of caster by 146 - 244
-- Increases power of caster by 32 - 53 every 4 seconds

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinHeal, MaxHeal, DoTType, DoTMin, DoTMax, HoTMin, HotMax)
SpellDamage(Target, DmgType, MinVal, MaxVal)
SpellHeal("Power", MinHeal, MaxHeal, Caster)
end


function tick(Caster, Target, DmgType, MinVal, MaxVal, MinHeal, MaxHeal, DoTType, DoTMin, DoTMax, HoTMin, HotMax)
SpellDamage(Target, DoTType, DotMin, DoTMax)
SpellHeal("Power", HoTMin, HoTMax, Caster)
end
