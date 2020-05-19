--[[
    Script Name    : Spells/Mage/Summoner/Necromancer/GraspingBones.lua
    Script Author  : 
    Script Date    : 2013.12.08 02:12:54
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    -- Stuns target
    -- Does not affect Epic targets
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
