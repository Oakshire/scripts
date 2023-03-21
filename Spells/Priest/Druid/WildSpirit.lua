--[[
    Script Name    : Spells/Priest/Druid/WildSpirit.lua
    Script Author  : LordPazuzu     
    Script Date    : 3/20/2023
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Agi, Arcane)
    Level = GetLevel(Caster)
    SpellLevel = 17
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    AgiBonus = LvlBonus * 0.1
    ArcaneBonus = LvlBonus + StatBonus
    TotalAgi = Agi + AgiBonus
    TotalArcane = Arcane + ArcaneBonus
    
    
    AddSpellBonus(Target, 2, TotalAgi)
    AddSpellBonus(Target, 203, TotalArcane)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
