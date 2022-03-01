--[[
    Script Name    : Spells/AA/ShadowWalker.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 02:12:04
    Script Purpose : 
                   : 
--]]

-- Increases stealth or invisible movement speed of caster by 2.5%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 676, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end