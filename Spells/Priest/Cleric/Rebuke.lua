--[[
    Script Name    : Spells/Priest/Cleric/Rebuke.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:51
    Script Purpose : 
                   : 
--]]

-- Decreases Mitigation of target vs physical damage by 108
function cast(Caster, Target, Mit, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    MitDebuff = LvlBonus  + Mit
    
    AddSpellBonus(Target, 200, math.floor (MitDebuff))
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
