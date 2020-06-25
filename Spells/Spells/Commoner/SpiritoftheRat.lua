--[[
    Script Name    : Spells/Commoner/SpiritoftheRat.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 01:04:57
    Script Purpose : 
                   : 
--]]

--     Increases Power Regen of caster by 24.0

function cast(Caster, Target, Pwr)
	if (GetLevel(Caster) >= 10 ) 
		then    
	AddSpellBonus(Caster, 603, Pwr)
	SetIllusion(Caster, 196)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end