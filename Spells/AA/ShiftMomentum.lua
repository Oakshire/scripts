--[[
    Script Name    : Spells/AA/ShiftMomentum.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:13
    Script Purpose : 
                   : 
--]]

-- Increases in-combat movement speed of caster by 1.3%
-- Increases speed of caster by 1.3%

function cast(Caster, Target, Stats)
	AddSpellBonus(Target, 609, Stats)
	AddSpellBonus(Target, 616, Stats)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end