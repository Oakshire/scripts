--[[
    Script Name    : Spells/Priest/Cleric/RadiantStrike.lua
    Script Author  : neatz09
    Script Date    : 2020.11.10 10:11:00
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Inflicts 37 - 45 divine damage on target
-- Inflicts 37 - 45 divine damage on target
--     If target is undead

function cast(Caster, Target, DmgType, MinVal, MaxVal, SpellLevel)
    
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MaxVal
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if GetRaceBaseType(Target) == 333 then
        SpellDamage(Target, Dmgtype, MinDmg, MaxDmg)
    end

end
