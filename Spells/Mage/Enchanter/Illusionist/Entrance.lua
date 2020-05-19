--[[
	Script Name	: Spells/Mage/Enchanter/Illusionist/Entrance.lua
	Script Author	: John Adams
	Script Date	: 2013.11.19
	Script Purpose	: 
--]]

function cast(Caster, Target)
    AddControlEffect(Target, 1)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1)
end
