--[[
    Script Name    : Spells/Commoner/Enlightenment.lua
    Script Author  : LordPazuzu
    Script Date    : 2-26-2023
    Script Purpose : 
                   : 
--]]

--             Increases power of caster by 40.0%
function cast(Caster, Target)
    MaxPow = GetMaxPower(Caster)
    PowHeal = math.floor(MaxPow * 0.4)
    SpellHeal("Power", PowHeal, PowHeal, Caster)

end


