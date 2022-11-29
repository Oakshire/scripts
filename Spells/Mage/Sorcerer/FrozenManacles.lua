--[[
    Script Name    : Spells/Mage/Sorcerer/FrozenManacles.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.28 10:11:14
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target, Snare)
    -- Roots target
    SetSpeedMultiplier(Target, 0)

    -- 10% chance to dispel when target takes damage
    AddProc(Target, 2, 10.0)

end

function proc(Caster, Target, Type, Snare)
    if Type == 2 then
    Spell = GetSpell(5501, GetSpellTier())
    SetSpellDataIndex(Spell, 0, Snare)
    CastCustomSpell(Spell, Target, Caster)
    end
    
 end




function remove(Caster, Target, Snare)
    Spell = GetSpell(5501, GetSpellTier(1))
    SetSpellDataIndex(Spell, 0, Snare)
    CastCustomSpell(Spell, Target, Caster)
    

end