--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/BattleTactics.lua
    Script Author  : Dello
    Script Date    : 10/06/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MaxVal)
    -- Increases max Stamina of the group.
    AddSpellBonus(Target, 1, MaxVal)
end

function remove(Caster, Target, MaxVal)
    RemoveSpellBonus(Target)
end