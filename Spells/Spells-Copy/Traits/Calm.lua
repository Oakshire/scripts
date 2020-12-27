--[[
	Script Name	: Spells\Traditions\Pools\Calm.lua
	Script Purpose	: Increases In-Combat Power Regen by 5.0
	Script Author	: Zcoretri
	Script Date	: 2012.09.11
--]]

function cast(Caster, Target, Modifier)
    AddSpellBonus(Target, 601, BonusAmt)
end

function remove(Caster, Target, StatAmt)
    RemoveSpellBonus(Target)
end