--[[
	Script Name	: Spells\Traditions\Pools\Robust.lua
	Script Purpose	: Increases Max Health by 2.5%
	Script Author	: Zcoretri
	Script Date	: 2012.09.11
--]]

function cast(Caster, Target, Modifier)
    CurHealth = GetMaxHealth(Target)
    BonusAmt = CurHealth * Modifier
    AddSpellBonus(Target, 500, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end