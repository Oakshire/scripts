--[[
	Script Name	: Deny.lua
	Script Purpose	: Inquisitor Debuff spell
	Script Author	: Zcoretri
	Script Date	: 23.May.2010
	Script Notes	:
--]]

function cast(Caster, Target, Debuff)
    -- Debuff INT and STR
    AddSpellBonus(Target, 0, Debuff)
    AddSpellBonus(Target, 4, Debuff)
--missing bleedthrough
end


function remove(Caster, Target, Debuff)
    RemoveSpellBonus(Target)
end
