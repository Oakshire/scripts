--[[
    Script Name    : Spells/AA/RitualistsWisdom.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:37
    Script Purpose : 
                   : 
--]]

-- Increases STA and WIS of caster by 4.0
-- Increases Mitigation of caster vs physical damage by 1155

function cast(Caster, Target, Stats, Mit)
	AddSpellBonus(Target, 3, Stats)
	AddSpellBonus(Target, 1, Stats)
	AddSpellBonus(Target, 200, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end