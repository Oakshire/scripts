--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/FaithStrike.lua
    Script Author  : Dello
    Script Date    : 19/07/2014
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DDType, MinDmg, MaxDmg, HealAmt)

  if MaxDmg ~= nil and MinDmg < MaxDmg then
    dmgAmount = math.random(MinDmg, MaxDmg)
    SpellDamage(Target, DDType, dmgAmount)
  else
    SpellDamage(Target, DDType, MinDmg)
  end

  if HealAmt ~= nil then
    SpellHeal("Heal", HealAmt, HealAmt, Caster)
  end

end