--[[
    Script Name    : Spells/Commoner/SpiritTotemoftheBamboo.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 05:04:55
    Script Purpose : 
                   : 
--]]

--     Increases Power Regen of caster by 108.0
function cast(Caster, Target, Pwr)
	if (GetLevel(Caster) >= 80 ) 
		then    
	AddSpellBonus(Caster, 603, Pwr)
	end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
end