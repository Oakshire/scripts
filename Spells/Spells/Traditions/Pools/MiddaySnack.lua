--[[
	Script Name	: Spells\Traditions\Pools\MiddaySnack.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.03.29
	Script Notes	: 
--]]

function cast(Caster, Target, Modifier)
    CurPower = GetMaxPower(Target)
    BonusAmt = CurPower * Modifier
    AddSpellBonus(Target, 501, BonusAmt)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end