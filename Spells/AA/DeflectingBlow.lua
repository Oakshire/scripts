--[[
    Script Name    : Spells/AA/DeflectingBlow.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:02
    Script Purpose : 
                   : 
--]]

-- Increases caster's chance to block by 1.2%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 651, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end