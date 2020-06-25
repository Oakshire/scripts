--[[
	Script Name	: Spells\Traditions\Combat\AnscestralIre.lua
	Script Author	: Zcoretri
	Script Date	: 2013.03.26
	Script Notes	: Dark Elf - Increases Double Attack Chance 2%
--]]

function cast(Caster, Target, Modifier)
    AddSpellBonus(Target, 641, Modifier)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end