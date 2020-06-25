--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/PerfectFinesse.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 10:11:17
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)


function cast(Caster, Target, Haste, Multi)
-- Increases Haste of caster by 18.7
    AddSpellBonus(Target, 617, Haste)
-- Increases Multi Attack of caster by 21.5
    AddSpellBonus(Target, 641, Multi)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
