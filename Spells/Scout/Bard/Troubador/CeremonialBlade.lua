--[[
    Script Name    : Spells/Scout/Bard/Troubadour/CeremonialBlade.lua
    Script Author  : Zcoretri
    Script Date    : 19.March.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, DmgType2, MinDmg2, MaxDmg2)
    -- Inflicts mental damage on target
    -- Inflicts mental damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

    if LastSpellAttackHit() then
        SpellDamage(Target, DmgType2, MinDmg2, MaxDmg2)
    end
end

function remove(Caster, Target)
end

