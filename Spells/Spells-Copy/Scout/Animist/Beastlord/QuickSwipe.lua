--[[
    Script Name    : Spells/Scout/Animist/Beastlord/QuickSwipe.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 09:11:24
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)

function cast(Caster, Target, DmgType, MinVal, MaxVal, DPSAmt, AttackSpeed)

    -- Inflicts 7 - 13 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Decreases Damage Per Second of target by 4.2
    AddSpellBonus(Target, 629, DPSAmt)

    -- Decreases Attack Speed of target by 3.6
    AddSpellBonus(Target, 617, AttackSpeed)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
