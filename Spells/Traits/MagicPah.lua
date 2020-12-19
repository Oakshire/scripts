--[[
    Script Name    : Spells/Traits/MagicPah.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 05:12:38
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Increases Mitigation of caster vs arcane damage by 0

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 203, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end