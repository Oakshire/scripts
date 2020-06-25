--[[
	Script Name	: Spells\Traditions\Noncombat\IrefulWill.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.02.01
	Script Notes	: Increases out-of-combat power regen based on level
--]]

function cast(Caster, Target, Modifier)
    Level = GetLevel(Target)
    BonusAmt = Level * Modifier
    AddSpellBonus(Target, 601, BonusAmt)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end