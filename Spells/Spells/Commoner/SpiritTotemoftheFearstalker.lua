--[[
    Script Name    : Spells/Commoner/SpiritTotemoftheFearstalker.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 05:04:01
    Script Purpose : 
                   : 
--]]

--     Increases Power Regen of caster by 265.5
function cast(Caster, Target, HP)
	if (GetLevel(Caster) >= 80) 
		then    
	AddSpellBonus(Caster, 602, HP)
	end

end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
end