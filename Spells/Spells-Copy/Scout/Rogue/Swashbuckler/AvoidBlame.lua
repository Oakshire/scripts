--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/AvoidBlame.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 02:12:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HateAmt)
    -- On a melee hit this spell may cast Evade on target of attack.  Triggers about 4.0 times per minute. 
    AddProc(Target, 3, 20.0)
end

function proc(Caster, Target, Type, HateAmt)
    --     Decreases Threat to target by 268 
    if Type == 3 then
        AddHate(Target, HateAmt, 1)
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end