--[[
    Script Name    : Spells/Commoner/AncientWrath.lua
    Script Author  : neatz09
    Script Date    : 2020.04.10 01:04:46
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, (GetLevel(Caster) * 1.08) * MinVal, (GetLevel(Caster) * 1.08) * MaxVal)
    Say(Caster, "Unsure if there is a stun or not.")

end
