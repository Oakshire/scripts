--[[
    Script Name    : Spells/Traits/KruzzsLuck.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:06
    Script Purpose : 
                   : 
--]]

-- Increases the amount of durability gained by 1.0.
-- Increases success chance by 1.0%

function cast(Caster, Target, Durability, Success)
	AddSpellBonus(Target, 801, Durability)
	AddSpellBonus(Target, 804, Success)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end