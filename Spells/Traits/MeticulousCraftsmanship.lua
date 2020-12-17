--[[
    Script Name    : Spells/Traits/MeticulousCraftsmanship.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:50
    Script Purpose : 
                   : 
--]]

-- Increases the durability gain by 2 every round.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 802, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end