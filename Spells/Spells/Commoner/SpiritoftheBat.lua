--[[
    Script Name    : Spells/Commoner/SpiritoftheBat.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 09:04:59
    Script Purpose : 
                   : 
--]]

--     Increases Power Regen of caster by 48.0
function cast(Caster, Target, Pwr)
	if (GetLevel(Caster) >= 30) 
		then    
	AddSpellBonus(Caster, 603, Pwr)
	SetIllusion(Caster, 239)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end