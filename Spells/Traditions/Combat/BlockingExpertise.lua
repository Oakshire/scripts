--[[
	Script Name	: Spells\Traditions\Combat\BlockingExpertise.lua
	Script Author	: Zcoretri
	Script Date	: 2013.03.26
	Script Notes	: Barbarian - Increases Deflection by 2.0 and Shield Effectiveness by 2%
--]]

function cast(Caster, Target, Deflection, Shield)
    AddSkillBonus(Target, 3850377186, Deflection)
    --AddSpellBonus(Target,,Shield)
end

function remove(Caster, Target, Deflection, Shield)
    RemoveSkillBonus(Target)
    --RemoveSpellBonus(Target)
end