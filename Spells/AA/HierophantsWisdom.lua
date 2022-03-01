--[[
    Script Name    : Spells/AA/HierophantsWisdom.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:35
    Script Purpose : 
                   : 
--]]

-- Increases WIS and STA of caster by 4.0
-- Increases Mitigation of caster vs physical damage by 1050

function cast(Caster, Target, Stats, Mit)
	AddSpellBonus(Target, 1, Stats)
	AddSpellBonus(Target, 3, Stats)
	AddSpellBonus(Target, 200, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end