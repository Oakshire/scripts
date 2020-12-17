--[[
    Script Name    : Spells/Traits/BrellsBlessing.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:31
    Script Purpose : 
                   : 
--]]

-- Increases success chance by 2.0%

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 804, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end