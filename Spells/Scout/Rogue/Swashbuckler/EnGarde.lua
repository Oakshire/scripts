--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/EnGarde.lua
    Script Author  : neatz09
    Script Date    : 2020.02.02 03:02:20
    Script Purpose : 
                   : 
--]]

-- When a combat art is used this spell has a 15% chance to cast Counterattack on target of combat art.  
--     Inflicts 166 - 276 melee damage on target
-- When blocked this spell will cast Counterattack on target's victim.  
--     Inflicts 166 - 276 melee damage on target
-- When parried this spell will cast Counterattack on target's victim.  
--     Inflicts 166 - 276 melee damage on target
-- When deflected this spell will cast Counterattack on target's victim.  
--     Inflicts 166 - 276 melee damage on target
-- When riposted this spell will cast Counterattack on target's victim.  
--     Inflicts 166 - 276 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
AddProc(Target, 3, 15) --Combat art
AddProc(Target, 7, 100) -- Blocked
AddProc(Target, 8, 100) -- Parried
--AddProc(Target, 1, 100) -- Deflected missing functionality
AddProc(Target, 9, 100) -- riposte
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
if Type == 3 or Type == 7 or Type == 8 or Type == 9 then
--no deflection
ProcDamage(Caster, Target, "Counterattack", DmgType, MinVal, MaxVal)
end
end

function remove(Caster, Target)
RemoveProc(Target)
end
