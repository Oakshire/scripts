--[[
    Script Name    : Spells/AA/EliminationStance.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:54
    Script Purpose : 
                   : 
--]]

-- Increases Weapon Damage Bonus of caster by 1.0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 685, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end