--[[
    Script Name    : Spells/Priest/Shaman/Defiler/TerrorChant.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 04:03:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Hate)
    -- Decreases Threat to targets in Area of Effect by 323 
    AddHate(Caster, Target, Hate)

    -- Decreases threat priority of targets in Area of Effect by 1 position

    -- Makes targets in Area of Effect afraid
    --     If Target is not Epic
    -- 30% chance to dispel when target takes damage
    if not IsEpic(Target) then
        AddControlEffect(Target, 6)
        AddProc(Target, 2, 30.0)
    end
end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 6)
end

