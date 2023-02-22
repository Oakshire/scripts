--[[
    Script Name    : Spells/Commoner/AglaemantisColdTouch.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.21 10:02:19
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
    ProcDamage(Caster, Target, "Chilling Touch", 4, ProcDMG)

end

function remove(Caster, Target)
    RemoveProc(Caster)
end

