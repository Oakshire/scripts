--[[
    Script Name    : Spells/Traits/BattleReady.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:49
    Script Purpose : 
                   : 
--]]

-- Increases Power Regen of caster by 6.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 601, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end