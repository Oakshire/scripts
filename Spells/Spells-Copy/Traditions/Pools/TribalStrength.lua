--[[
	Script Name	: Spells\Traditions\Pools\TribalStrength.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.01.29
	Script Notes	: Increases Health Pool by 3.0%
--]]

function cast(Caster, Target, Modifier)
    CurHP = GetMaxHP(Target)
    BonusAmt = CurHP * Modifier
    AddSpellBonus(Target, 500, BonusAmt)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end