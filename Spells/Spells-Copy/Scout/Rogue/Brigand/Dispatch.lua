--[[
    Script Name    : Spells/Scout/Rogue/Brigand/Dispatch.lua
    Script Author  : neatz09
    Script Date    : 2019.10.07 02:10:30
    Script Purpose : 
                   : 
--]]

-- Must be flanking or behind
   function precast(Caster, Target)
    -- Must be flanking or behind
    if not IsFlanking(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end
end

-- Inflicts 541 - 903 melee damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, Debuff)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

-- Decreases Mitigation of target vs physical damage by 4061
-- Decreases Mitigation of target vs elemental damage by 4061
-- Decreases Mitigation of target vs noxious damage by 4061
-- Decreases Mitigation of target vs arcane damage by 4061
    AddSpellBonus(Target, 200, Debuff)
    AddSpellBonus(Target, 201, Debuff)
    AddSpellBonus(Target, 202, Debuff)
    AddSpellBonus(Target, 203, Debuff)
end

    
function remove(Caster, Target)
RemoveSpellBonus(Caster, Target)

end




