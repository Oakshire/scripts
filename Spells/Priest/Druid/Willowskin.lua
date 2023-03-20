--[[
    Script Name    : Spells/Priest/Druid/Willowskin.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Stat, Mit)
    Level = GetLevel(Caster)
    SpellLevel =  16
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    StaBonus= LvlBonus * 0.1 + Stat
    MitBonus = LvlBonus + StatBonus
    TotalMit = Mit + math.floor(MitBonus)
    
    AddSpellBonus(Target, 1, StaBonus)
    AddSpellBonus(Target, 2, StaBonus)
    AddSpellBonus(Target, 3, StaBonus)
    AddSpellBonus(Target, 200, TotalMit)
    


end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
