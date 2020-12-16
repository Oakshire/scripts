--[[
    Script Name    : Spells/AA/SevereJudgment.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:13
    Script Purpose : 
                   : 
--]]

-- Improves base auto-attack multiplier of caster by 0.03. Does not apply to spell weapons.

function cast(Caster, Target, BonusAmt)
	AddSpellBonus(Target, 649, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end