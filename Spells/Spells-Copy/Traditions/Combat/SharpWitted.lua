--[[
	Script Name	: Spells\Traditions\Combat\SharpWitted.lua
	Script Author	: Zcoretri
	Script Date	: 2013.03.26
	Script Notes	: Dark Elf - Increases Piercing and Ranged by 5.0
--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, 3048574950, SkillAmt) -- Piercing
    AddSkillBonus(Target, 1756482397, SkillAmt) -- Ranged
end

function remove(Caster, Target, SkillAmt)
    RemoveSkillBonus(Target)
end