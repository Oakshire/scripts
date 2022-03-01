--[[
    Script Name    : Spells/AA/LendShielding.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 04:12:06
    Script Purpose : 
                   : 
--]]

-- Increases target's chance to block by 100.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 651, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end