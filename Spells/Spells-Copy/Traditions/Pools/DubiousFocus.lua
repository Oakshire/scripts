--[[
	Script Name	: Spells\Traditions\Pools\DubiousFocus.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.02.01
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