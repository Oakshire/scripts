--[[
	Script Name	: Spells\Traditions\Resist\ElementalDefiance.lua
	Script Purpose	:
	Script Author	: Zcoretri
	Script Date	: 2013.02.01
	Script Notes	: Increases Elemental mitigation based on level
--]]

function cast(Caster, Target, Modifier)
    CurLevel = GetLevel(Target)
    BonusAmt = CurLevel * Modifier
    AddSpellBonus(Target, 201, BonusAmt)
end

function remove(Caster, Target, Modifier)
    RemoveSpellBonus(Target)
end