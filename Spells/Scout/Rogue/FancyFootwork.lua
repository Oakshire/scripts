--[[
    Script Name    : Spells/Scout/Rogue/FancyFootwork.lua
    Script Author  : LordPazuzu
    Script Date    : 1/3/2023
    Script Purpose : 
                   : 
--]]



function cast(Caster, Target, Parry)
    Level = GetLevel(Caster)
    SpellLevel = 18
    Mastery = SpellLevel + 4

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    ParryMod = LvlBonus + Parry
    
    AddSkillBonus(Target, GetSkillIDByName("Parry"), ParryMod)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end