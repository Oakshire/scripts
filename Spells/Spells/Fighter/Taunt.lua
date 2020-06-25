--[[
    Script Name    : Spells/Fighter/Taunt.lua
    Script Author  : Dello
    Script Date    : 19/07/2014
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
   local spell_name = GetSpellName()
   if spell_name ~= "Faith Strike I" and spell_name ~= "Faith Strike II" and spell_name ~= "Faith Strike III" then

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

      local max_hp = GetMaxHP(Target)
      MinVal = (max_hp * (MinVal / 100))
      MaxVal = (max_hp * (MaxVal / 100))
   end

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    SpellHeal("Heal", MinVal, MaxVal, 0, 2, 1)


end