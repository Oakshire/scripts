--[[
    Script Name    : Spells/Traits/TwiddysArtistry.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:36
    Script Purpose : 
                   : 
--]]

-- Increases the durability gain by 2 every round.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 801, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end