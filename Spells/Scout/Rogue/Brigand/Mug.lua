--[[
	Script Name	: Spells/Scout/Rogue/Brigand/Mug.lua
	Script Purpose	: Brigand Debuff
	Script Author	: Zcoretri
	Script Date	: 14.March.2014
	Script Notes	:   
--]]

function cast(Caster, Target, StatAmt, SkillAmt)
    AddSkillBonus(Target, 609880714, SkillAmt)
    AddSpellBonus(Target, 2, StatAmt)
end

function remove(Caster, Target, StatAmt, SkillAmt)
    RemoveSkillBonus(Target)
    RemoveSpellBonus(Target)
end