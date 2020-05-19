--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/PainbringerPct.lua
    Script Author  : neatz09
    Script Date    : 2019.10.18 05:10:51
    Script Purpose : 
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
    SpellHeal("Heal", GetPCTOfHP(Caster, MinHeal),Caster, 2, 1)
    -- ModifyHP(Caster, MinHeal) -- heals 2 every 3 seconds for 9 seconds
  end

end

function tick(Caster, Target, MinHeal, DmgType, MinDmg, MaxDmg, DoTType, DoTAmt)

  -- Heal component
  if MinHeal ~= nil then
    SpellHeal("Heal", GetPCTOfHP(Caster, MinHeal),Caster, 2, 1)
    -- ModifyHP(Caster, MinHeal) -- heals 2 every 3 seconds for 9 seconds
  end

  -- DoT component
  if DoTAmt ~= nil then
    SpellDamage(Target, DoTType, DoTAmt) -- Disease 1 every 3 seconds for 9 seconds
  end

end
