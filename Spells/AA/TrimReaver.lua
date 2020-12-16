--[[
    Script Name    : Spells/AA/TrimReaver.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:32
    Script Purpose : 
                   : 
--]]

-- Increases rare harvest chance by 0.2%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 813, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end