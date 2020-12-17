--[[
    Script Name    : Spells/AA/NumbingBlows.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:22
    Script Purpose : 
                   : 
--]]

-- Gives caster an extra 2.5% mitigation to their worn armor

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 678, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end