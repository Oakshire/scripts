--[[
    Script Name    : Spells/Commoner/SpiritoftheBeholder.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 08:04:51
    Script Purpose : 
                   : 
--]]

--     Increases Power Regen of caster by 84.0
function cast(Caster, Target, Pwr)
	if (GetLevel(Caster) >= 60) 
		then    
	AddSpellBonus(Caster, 603, Pwr)
	SetIllusion(Caster, 5918)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end