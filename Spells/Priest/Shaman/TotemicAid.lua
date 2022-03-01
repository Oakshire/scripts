--[[
    Script Name    : Spells/Priest/Shaman/TotemicAid.lua
    Script Author  : neatz09
    Script Date    : 2019.12.14 02:12:50
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Heals target for 91 - 111
-- Increases Max Health of target by 11.3

function cast(Caster, Target, MinHeal, MaxHeal, HP)
SpellHeal("Heal", MinHeal, MaxHeal)
    AddSpellBonus(Target, 606, HP)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

