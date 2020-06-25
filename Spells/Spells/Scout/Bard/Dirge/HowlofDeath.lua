--[[
    Script Name    : Spells/Scout/Bard/Dirge/HowlofDeath.lua
    Script Author  : neatz09
    Script Date    : 2019.09.29 10:09:59
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 61 - 101 disease damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinHeal, MaxHeal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

-- Heals caster for 40 - 67
  SpellHeal("Heal", MinHeal, MaxHeal)

end


