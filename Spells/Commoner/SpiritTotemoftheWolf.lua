--[[
    Script Name    : Spells/Commoner/SpiritTotemoftheWolf.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 05:04:08
    Script Purpose : 
                   : 
--]]

--     Increases Speed of caster by 24.0%
function cast(Caster, Target, OutSpd, InSpd)
	if (GetLevel(Caster) >= 15) 
		then
	SetIllusion(Caster, 216)  
	AddSpellBonus(Caster, 609, OutSpd)
    AddSpellBonus(Caster, 616, InSpd)

	end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end