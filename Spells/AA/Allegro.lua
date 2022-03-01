--[[
    Script Name    : Spells/AA/Allegro.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 04:12:04
    Script Purpose : 
                   : 
--]]

-- Increases Ability Casting Speed of group members (AE) by 0.8%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 664, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end