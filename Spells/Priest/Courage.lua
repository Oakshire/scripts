--[[
    Script Name    : Spells/Priest/Courage.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:25
    Script Purpose : 
                   : 
--]]

-- Increases STA of group members (AE) by 6.3
-- Increases Mitigation of group members (AE) vs physical damage by 61
function cast(Caster, Target, Sta, Mit)
    Level = GetLevel(Caster)
    SpellLevel =  5
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    StaBonus= LvlBonus * 0.1 + Sta
    MitBonus = LvlBonus + StatBonus
    TotalMit = Mit + math.floor(MitBonus)
    
    AddSpellBonus(Target, 1, StaBonus)
    AddSpellBonus(Target, 200, TotalMit)
    


end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

   

