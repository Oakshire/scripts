--[[
    Script Name    : Spells/Commoner/SpiritTotemoftheChokidai.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 08:04:09
    Script Purpose : 
                   : 
--]]

--     Increases Speed of caster by 45.0%
function cast(Caster, Target, OutSpd)
	if (GetLevel(Caster) >= 65) 
		then
	SetIllusion(Caster, 7323)  
	AddSpellBonus(Caster, 609, OutSpd)
	end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end