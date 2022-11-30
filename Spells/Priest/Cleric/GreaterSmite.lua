--[[
    Script Name    : Spells/Priest/Cleric/GreaterSmite.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.30 01:11:56
    Script Purpose : 
                   : 
--]]

-- Inflicts 25 - 31 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Say(Caster, "Resistability and hostile dispell should be hardcoded.. not implemented.")
	if not IsEpic() then
		AddControlEffect(Target, 3)
			end	
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end