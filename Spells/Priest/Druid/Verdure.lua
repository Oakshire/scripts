--[[
    Script Name    : Spells/Priest/Druid/Verdure.lua
    Script Author  : LordPazuzu
    Script Date    : 3/20/2023
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, HP, Mit)
    Level = GetLevel(Caster)
    SpellLevel= 19
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    TotalBonus = LvlBonus + StatBonus
    TotalHP = TotalBonus + HP
    TotalMit = TotalBonus + Mit
    
    
    AddSpellBonus(Target, 500, TotalHP)
    AddSpellBonus(Target, 200, TotalMit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

