--[[
    Script Name    : Spells/AA/RelentlessAssault.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 04:12:26
    Script Purpose : 
                   : 
--]]

-- Increases Ability Reuse Speed of caster by 12.0%
-- Increases Ability Recovery Speed of caster by 30.0%

function cast(Caster, Target, Reuse, Recov)
    AddSpellBonus(Target, 662, Reuse)
    AddSpellBonus(Target, 663, Recov)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end