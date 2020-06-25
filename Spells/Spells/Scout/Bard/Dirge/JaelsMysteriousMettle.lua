--[[
    Script Name    : Spells/Scout/Bard/Dirge/JaelsMysteriousMettle.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 12:12:20
    Script Purpose : 
                   : 
--]]

-- Increases Parry of group members (AE) by 7.3

function cast(Caster, Target, BuffAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), BuffAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
