--[[
    Script Name    : Spells/AA/RalissksAlacrity.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:33
    Script Purpose : 
                   : 
--]]

-- Increases Ability Casting Speed of caster by 1.5%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 664, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end