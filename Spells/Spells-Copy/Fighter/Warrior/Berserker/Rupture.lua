--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Rupture.lua
    Script Author  : John Adams
    Script Date    : 2013.11.23 09:11:30
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
function cast(Caster, Target, DDType, MinDmg, MaxDmg)

    -- Inflicts 3 - 10 melee damage on target
    if MaxDmg ~= nil and MinDmg < MaxDmg then
        SpellDamage(Target, DDType, math.random(MinDmg, MaxDmg))
    else
        SpellDamage(Target, DDType, MinDmg)
    end

end
