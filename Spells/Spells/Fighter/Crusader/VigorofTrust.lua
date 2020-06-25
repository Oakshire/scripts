--[[
    Script Name    : Spells/Fighter/Crusader/VigorofTrust.lua
    Script Author  : neatz09
    Script Date    : 2020.02.24 08:02:47
    Script Purpose : 
                   : 
--]]

-- Increases WIS and STR of group members (AE) by 9.6

function cast(Caster, Target, Stat)
    AddSpellBonus(Target, 0, Stat)
    AddSpellBonus(Target, 3, Stat)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end
