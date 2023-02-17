--[[
    Script Name    : Spells/Pet/TellurianForce.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.19 02:11:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
  local IntBonus = GetInt(Caster) / 10
  local MinDmg = MinVal + IntBonus
  local MaxDmg = MaxVal + IntBonus
  
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)

    AddControlEffect(Target, 4)

end
    
function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end

    

