--[[
    Script Name    : Spells/AA/PerfectForm.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:31
    Script Purpose : 
                   : 
--]]

-- Improves base auto-attack multiplier of caster by 0.02. Does not apply to spell weapons.

function cast(Caster, Target, BonusAmt)
AddSpellBonus(Target, 649, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end