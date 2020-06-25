--[[
    Script Name    : Spells/Commoner/SpiritoftheLion.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 05:04:38
    Script Purpose : 
                   : 
--]]

--     Increases Health Regen of caster by 82.0

function cast(Caster, Target, HP)
	if (GetLevel(Caster) >= 50) 
		then    
	AddSpellBonus(Caster, 602, HP)
	SetIllusion(Caster, 303)
else
	SetIllusion(Caster, 0)
		end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
	SetIllusion(Caster, 0)
end