--[[
    Script Name    : Spells/Commoner/PreAlphaMeleeBuff.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.20 03:01:11
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    AddProc(Caster, 1, 100)


end

function proc(Caster, Target, Type)
    local STR = GetStr(Caster) 
    local DMGBonus = STR/10
    local ProcDMG = math.floor(DMGBonus)
    ProcDamage(Caster, Target, "AlphaProc", 13, ProcDMG)

end

function remove(Caster, Target)
    RemoveProc(Caster)
end
