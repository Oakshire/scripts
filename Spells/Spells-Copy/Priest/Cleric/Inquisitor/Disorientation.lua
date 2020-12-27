--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Disorientation.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 09:03:27
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Hate)
    -- Decreases Threat to targets in Area of Effect by 323 
    AddHate(Caster, Target, Hate)

    -- Stuns targets in Area of Effect
    --     If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end

    -- Decreases threat priority of targets in Area of Effect by 1 position
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
