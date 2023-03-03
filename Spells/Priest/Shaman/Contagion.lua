--[[
    Script Name    : Spells/Priest/Shaman/Contagion.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:07
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 12 disease damage on target instantly and every 4 seconds

function cast(Caster, Target, DmgType, MinVal)
 Level = GetLevel(Caster)
    SpellLevel = 11
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus * 2 + StatBonus
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MinDmg)
end

function tick(Caster, Target, DmgType, MinVal)
 Level = GetLevel(Caster)
    SpellLevel = 11
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus * 2 + StatBonus
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, DmgType, MinDmg, MinDmg)
end


-- Inflicts 12 disease damage on target instantly and every 4 seconds
--     If target is nightblood
-- Inflicts 12 disease damage on target instantly and every 4 seconds
--     If target is shadowed folk
