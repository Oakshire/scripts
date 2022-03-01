--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/Painbringer.lua
    Script Author  : John Adams
    Script Date    : 2013.11.17 05:11:19
    Script Purpose : DD, DoT and Heal
                   : 
--]]

function cast(Caster, Target, MinHeal, DmgType, MinDmg, MaxDmg, DoTType, DoT)

  -- DD component
  if MaxDmg ~= nil and MinDmg < MaxDmg then
    dmgAmount = math.random(MinDmg, MaxDmg)
    SpellDamage(Target, DDType, dmgAmount)
  else
    SpellDamage(Target, DDType, MinDmg)
  end

  -- Painbringer Component (instant heal)
  if MinHeal ~= nil then
    SpellHeal("Heal", MinHeal, 0, Caster)
    -- ModifyHP(Caster, MinHeal) -- heals 2 every 3 seconds for 9 seconds
  end

end

function tick(Caster, Target, MinHeal, DmgType, MinDmg, MaxDmg, DoTType, DoTAmt)

  -- Heal component
  if MinHeal ~= nil then
    SpellHeal("Heal", MinHeal, 0, Caster)
    -- ModifyHP(Caster, MinHeal) -- heals 2 every 3 seconds for 9 seconds
  end

  -- DoT component
  if DoTAmt ~= nil then
    SpellDamage(Target, DoTType, DoTAmt) -- Disease 1 every 3 seconds for 9 seconds
  end

end
