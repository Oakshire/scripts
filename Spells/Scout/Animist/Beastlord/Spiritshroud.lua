--[[
    Script Name    : Spells/Scout/Animist/Beastlord/Spiritshroud.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 09:11:30
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Grants stealth to caster
    -- Suspends caster's movement speed enhancements
    Stealth(1, Caster)
end

function remove(Caster, Target)
    RemoveStealth(Caster)
end
