--[[
    Script Name    : Spells/Fighter/Warrior/HunkerDown.lua
    Script Author  : LordPazuzu
    Script Date    : 1/1/2023
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, HasteMod, SelfSnare, Mit, TargetSnare, SpellLevel)
        Say(Caster, "This spell is a work in progress, you probably shouldn't use it.")


-- Decreases Haste of caster by 11.3
    AddSpellBonus(Caster, 617, HasteMod)

-- Slows caster by 32.6%
    local Slow = 100.0 - SelfSnare
    SetSpeedMultiplier(Caster, Slow)

-- Increases Mitigation of caster vs physical damage by 133
    Level = GetLevel(Caster)    
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    MitBonus = LvlBonus + Mit
    AddSpellBonus(Caster, 200, MitBonus)

-- On a melee hit this spell may cast Cripple on target of attack.  Lasts for 10.0 seconds.  Triggers about 5.0 times per minute. 
--     Slows targets in Area of Effect by 29.3%
--     5% chance to dispel when target receives hostile action
--     5% chance to dispel when target takes damage

    AddProc(Target, 3, 20.0)

end

function proc(Caster, Target, Type, TargetSnare, SpellLevel)
    Spell = GetSpell(5431, GetSpellTier())
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    SnareBonus = LvlBonus * 0.5
    MaxSnare = TargetSnare + math.floor(SnareBonus)
    
    if Type == 3 then
		SetSpellDataIndex(Spell, 0, MaxSnare)
		    CastCustomSpell(Spell, Caster, Target)
    end
    
end


function remove(Caster, Target)
    RemoveSpellBonus(Caster)
    SetSpeedMultiplier(Caster, 1)

end
