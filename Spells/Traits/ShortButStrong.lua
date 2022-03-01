--[[
    Script Name    : Spells/Traits/ShortButStrong.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:28
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 3.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end