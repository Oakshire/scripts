--[[
	Script Name	: Spells\Traditions\Pools\HatefulMind.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.02.01
	Script Notes	: Increases Mana Pool by 3.0%
--]]

function cast(Caster, Target, Modifier)
    CurPower = GetMaxPower(Target)
    BonusAmt = CurPower * Modifier
    AddSpellBonus(Target, 501, BonusAmt)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end