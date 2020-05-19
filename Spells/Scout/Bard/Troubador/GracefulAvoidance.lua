--[[
    Script Name    : Spells/Scout/Bard/Troubadour/GracefulAvoidance.lua
    Script Author  : Zcoretri
    Script Date    : 4.April.2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Defense)
    -- Increases Defense of group members (AE)
    AddSkillBonus(Target, 609880714, Defense)
end

function remove(Caster, Target, Defense)
    RemoveSkillBonus(Caster)
end

