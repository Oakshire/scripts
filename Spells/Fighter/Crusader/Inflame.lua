--[[
    Script Name    : Spells/Fighter/Crusader/Inflame.lua
    Script Author  : LordPazuzu
    Script Date    : 3/17/2023
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target by 651 - 977  instantly and by 130 - 195  every 3 seconds thereafter

function cast(Caster, Target, MinVal, MaxVal, TickMin, TickMax)
    Level = GetLevel(Caster)
    SpellLevel = 18
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    MinHate = LvlBonus * 2 + MinVal
    MaxHate = LvlBonus * 2 + MaxVal
    
    AddHate(Caster, Target, math.random(MinHate, MaxHate), 1)

end

function tick(Caster, Target, TickMin, TickMax, LvlBonus)

    MinTick = LvlBonus * 2 + TickMin
    MaxTick = LvlBonus * 2 + TickMax
 
    AddHate(Caster, Target, math.random(MinTick, MaxTick), 1)

end