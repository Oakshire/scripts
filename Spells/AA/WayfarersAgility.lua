--[[
    Script Name    : Spells/AA/WayfarersAgility.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:45
    Script Purpose : 
                   : 
--]]

-- Increases AGI and STA of caster by 4.0

function cast(Caster, Target, Stats)
	AddSpellBonus(Target, 2, Stats)
	AddSpellBonus(Target, 1, Stats)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end