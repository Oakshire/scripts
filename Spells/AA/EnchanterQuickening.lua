--[[
    Script Name    : Spells/AA/EnchanterQuickening.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:29
    Script Purpose : 
                   : 
--]]

-- Improves base auto-attack multiplier of caster by 0.03. Does not apply to spell weapons.
-- Increases Damage Per Second of caster by 4.8
-- Increases Attack Speed of caster by 4.8
-- Increases Multi Attack Chance of caster by 4.8
function cast(Caster, Target, Base, DPS, Haste, Multi)
    AddSpellBonus(Target, 600, Base)
    AddSpellBonus(Target, 600, DPS)
    AddSpellBonus(Target, 600, Haste)
    AddSpellBonus(Target, 600, Multi)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end