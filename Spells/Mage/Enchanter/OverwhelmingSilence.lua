--[[
    Script Name    : Spells/Mage/Enchanter/OverwhelmingSilence.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.29 09:11:30
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, PwrMax, PwrMin)
	local Pwr = math.random(PwrMin, PwrMax)
	if not IsEpic(Target) then 
		AddControlEffect(Target, 2)
			end
	    ModifyPower(Target, Pwr)
end

function tick(Caster, Target, PwrMax, PwrMin)
	local Pwr = math.random(PwrMin, PwrMax)
	ModifyPower(Target, Pwr)
end


function remove(Caster, Target)
    RemoveControlEffect(Target, 2)

end


