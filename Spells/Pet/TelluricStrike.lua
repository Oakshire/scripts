--[[
    Script Name    : Spells/Pet/TelluricStrike.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.18 02:11:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, DmgType, DmgLow, DmgHigh)
  local IntBonus = GetInt(Caster) / 10
  local MinDmg = DmgLow + IntBonus
  local MaxDmg = DmgHigh + IntBonus
  local MinHate = MinVal + IntBonus
  local MaxHate = MaxVal + IntBonus
  
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)
    
end

