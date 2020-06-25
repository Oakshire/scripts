--[[
	Script Name	: SacredArmor.lua
	Script Purpose	: Inquisitor Sacred Armor spell line
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, HealthAmt, MitAmt)
    AddSpellBonus(Target, 500, HealthAmt, 1)
    AddSpellBonus(Target, 200, MitAmt, 11, 21, 31)
end

function remove(Caster, Target, HealthAmt, MitAmt)
    RemoveSpellBonus(Target)
end