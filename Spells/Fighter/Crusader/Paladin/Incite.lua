--[[
	Script Name	: taunt.lua
	Script Purpose	: Generic Taunt script
	Script Author	: John Adams
	Script Date	: 2008.12.07
--]]

function cast(Caster, Target, TauntType, MinTauntVal, MaxTauntVal)
	-- Taunt component
	if MaxTauntVal ~= nil and MinTauntVal < MaxTauntVal then
                hateAmount = math.random(MinTauntVal, MaxTauntVal)
                AddHate(Caster, Target, hateAmount)
	else
                AddHate(Caster, Target, MinTauntVal)
	end
end

function tick(Caster, Target, TauntType, MinTauntVal, MaxTauntVal)
	if MaxTauntVal ~= nil and MinTauntVal < MaxTauntVal then
                hateAmount = math.random(MinTauntVal, MaxTauntVal)
		AddHate(Caster, Target, hateAmount)
	else
		AddHate(Caster, Target, MinTauntVal)
	end
end


function remove(Caster, Target, TauntType, MinTauntVal, MaxTauntVal)

end