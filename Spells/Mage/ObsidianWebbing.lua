--[[
    Script Name    : Spells/Mage/ObsidianWebbing.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.20 12:11:18
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
  local IntBonus = GetInt(Caster) / 10
  local MinDmg = MinVal + IntBonus
  local MaxDmg = MaxVal + IntBonus
  
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
        AddControlEffect(Target, 5)
        AddProc(Target, 2, 10.0)

end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end


function remove(Caster, Target)
    RemoveControlEffect(Target, 5)

end


