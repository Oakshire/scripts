--[[
	Script Name	: Spells\Traditions\Pools\CollectiveThoughts.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.01.29
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