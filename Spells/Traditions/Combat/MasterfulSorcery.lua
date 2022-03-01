--[[
	Script Name	: Spells\Traditions\Combat\MasterfulSorcery.lua
	Script Author	: Zcoretri
	Script Date	: 2013.03.26
	Script Notes	: Dark Elf - Increases Disruption and Subjugation by 5.0
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, 613995491, SkillAmt) -- Disruption
    AddSkillBonus(Target, 882983852, SkillAmt) -- Subjugation
end

function remove(Caster, Target, SkillAmt)
    RemoveSkillBonus(Target)
end