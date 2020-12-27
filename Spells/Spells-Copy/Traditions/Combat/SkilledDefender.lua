--[[
	Script Name	: Spells\Traditions\Combat\SkilledDefender.lua
	Script Author	: Zcoretri
	Script Date	: 2013.03.26
	Script Notes	: Barbarian - Increases Parry, Defense, and Deflection by 5.0
--]]

function cast(Caster, Target, Parry, Defense, Deflection)
    AddSkillBonus(Target, 540022425, Parry)
    AddSkillBonus(Target, 609880714, Defense)
    AddSkillBonus(Target, 3850377186, Deflection)
end

function remove(Caster, Target, Parry, Defense, Deflection)
    RemoveSkillBonus(Target)
    RemoveSkillBonus(Target)
    RemoveSkillBonus(Target)
end