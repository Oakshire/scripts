--[[
    Script Name    : Spells/Commoner/SpiritoftheFrog.lua
    Script Author  : neatz09
    Script Date    : 2020.04.04 12:04:11
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
--     Increases Health Regen of caster by 8.0

function cast(Caster, Target, HP)
    AddSpellBonus(Target, 602, HP)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
