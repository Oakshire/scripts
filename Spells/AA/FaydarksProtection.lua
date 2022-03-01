--[[
    Script Name    : Spells/AA/FaydarksProtection.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 01:12:22
    Script Purpose : 
                   : 
--]]

-- Increases Mitigation of caster vs physical damage by 275

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 200, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end