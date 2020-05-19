--[[
    Script Name    : Spells/Commoner/SpiritoftheWingedViper.lua
    Script Author  : neatz09
    Script Date    : 2020.04.05 10:04:18
    Script Purpose : 
                   : 
--]]

--     Increases Power Regen of caster by 36.0
function cast(Caster, Target, Pwr)
	if (GetLevel(Caster) >= 20) 
		then    
	AddSpellBonus(Caster, 603, Pwr)
	SetIllusion(Caster, 197)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end