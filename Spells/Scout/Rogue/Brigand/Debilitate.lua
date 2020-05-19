--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Debilitate.lua
    Script Author  : neatz09
    Script Date    : 2019.10.17 11:10:06
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
-- Must be flanking or behind
    if not IsFlanking(Target, Caster) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, Mit)
-- Inflicts 561 - 935 melee damage on target
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Decreases Mitigation of target vs physical damage by 2160
AddSpellBonus(Target, 200, Mit)
end


