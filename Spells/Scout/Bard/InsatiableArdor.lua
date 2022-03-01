--[[
    Script Name    : Spells/Scout/Bard/InsatiableArdor.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 06:11:20
    Script Purpose : 
                   : 
--]]

-- Increases Defense of group members (AE) by 4.9

function cast(Caster, Target, SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end