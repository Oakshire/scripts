--[[
    Script Name    : Spells/Scout/Bard/Troubadour/NightStrike.lua
    Script Author  : Zcoretri
    Script Date    : 17.March.2014
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if IsStealthed(Caster) then
        return true
    else
        SendMessage(Caster, "You must be sneaking to use this ability!", "yellow")
        return false, 0
    end
end

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, IntAmt)
    -- Decreases INT of target by 10.4
    AddSpellBonus(Target, 4, IntAmt)
    -- Inflicts melee damage on target
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, IntAmt)
    RemoveSpellBonus(Target)
end

