--[[
    Script Name    : Spells/Priest/Shaman/Mystic/Spirits.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.13 07:12:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Hate)
    -- Mesmerizes targets in Area of Effect
    --     If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 1)
    end

    -- Decreases Threat to targets in Area of Effect by 323 
    AddHate(Target, Hate)

    -- Decreases threat priority of targets in Area of Effect by 1 position
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1)
end
