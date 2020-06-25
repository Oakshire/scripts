--[[
	Script Name	: Aegolism.lua
	Script Purpose	: Templar Aegolism spell line
	Script Author	: Zcoretri
	Script Date	: 2010.3.18
--]]

function cast(Caster, Target, StaAmt, SkillAmt)
    AddSpellBonus(Target, 1, StaAmt)
    AddSkillBonus(Target, 418532101, SkillAmt)  --Slashing
    AddSkillBonus(Target, 3421494576, SkillAmt) --Crushing
    AddSkillBonus(Target, 3048574950, SkillAmt) --Piercing
    AddSkillBonus(Target, 1756482397, SkillAmt) --Ranged
end

function remove(Caster, Target, StaAmt, SkillAmt)
    RemoveSpellBonus()
    RemoveSkillBonus()
end