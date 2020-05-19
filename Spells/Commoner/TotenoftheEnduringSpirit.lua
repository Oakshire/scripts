--[[
    Script Name    : Spells/Commoner/SpiritTotemoftheEnduringSpirit.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 09:20:01
    Script Purpose : 
--]]

function cast(Caster, Target)
	if (GetLevel(Caster) >= 80) 
		then    
	AddControlEffect(Caster, 7)
	BreatheUnderwater(Caster, true)
	SetVision(Caster, 4)
	end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetVision(Caster, 0)
	RemoveControlEffect(Caster, 7)
end