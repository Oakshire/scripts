--[[
	Script Name	: Spells\Traditions\Pools\Centered.lua
	Script Purpose	: Increases Max Power by 2.5%
	Script Author	: Zcoretri
	Script Date	: 2012.07.22
--]]

function cast(Caster, Target, Modifier)
    CurPower = GetMaxPower(Target)
    BonusAmt = CurPower * Modifier
    AddSpellBonus(Target, 501, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end