--[[
    Script Name    : Spells/Scout/Predator/Assassin/ApplyPoison.lua
    Script Author  : neatz09
    Script Date    : 2019.11.07 08:11:55
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- On a melee hit this spell may cast Assassin's Hemotoxin on target of attack.  Lasts for 24.0 seconds.  Triggers about 3.0 times per minute. 
--     Inflicts 268 poison damage on target instantly and every 4 seconds
-- If profession other than Predator
-- If profession other than Rogue
function cast(Caster, Target, Chance, DmgType, MinVal)
    local class = GetClass(Target)
    if class ~= 32 and class ~= 33 and class ~= 34 and class ~= 38 and class ~= 39 and class ~= 40 then
    AddProc(Target, 3, 18)
    end
end

function proc(Caster, Target, Type, Chance, DmgType, MinVal)
        Say(Caster, "Need Custom Spell")
end

function remove(Caster, Target)
    RemoveProc(Target)
end