--[[
	Script Name	: Tenacity.lua
	Script Purpose	: Inquisitor Tenacity spell line
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, HealthAmt, SkillAmt)
    AddSpellBonus(Target, 1, HealthAmt) -- Sta
    AddSpellBonus(Target, 641, SkillAmt)  -- Multi Attack
end

function remove(Caster, Target, HealthAmt, SkillAmt)
    RemoveSpellBonus(Target)
end