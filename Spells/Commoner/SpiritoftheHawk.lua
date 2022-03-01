--[[
    Script Name    : Spells/Commoner/SpiritoftheHawk.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 05:04:08
    Script Purpose : 
                   : 
--]]

--     Increases Power Regen of caster by 60.0
function cast(Caster, Target, Pwr)
	if (GetLevel(Caster) >= 40) 
		then    
	AddSpellBonus(Caster, 603, Pwr)
	SetIllusion(Caster, 2358)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end