--[[
	Script Name	: Mug.lua
	Script Purpose	: Brigand Debuff script
	Script Author	: Zcoretri
	Script Date	: 17.April.2010
--]]

function cast(Caster, Target, Stat, Skill)
    AddSkillBonus(Target, 609880714, Skill)  -- Defense
    AddSpellBonus(Target, 2, Stat)  -- AGI
end

function tick(Caster, Target, Stat, Skill)

end

function remove(Caster, Target, Stat, Skill)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end
