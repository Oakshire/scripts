--[[
    Script Name    : Spells/Fighter/Brawler/Monk/Dragonfire.lua
    Script Author  : neatz09
    Script Date    : 2020.10.28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal, AbilityCastSpeed)
        SpellDamage(Target, DoTType, MinVal, MaxVal)
			if LastSpellAttackHit() then
  -- Decreases Ability Casting Speed of targets in Area of Effect by 27.0%
				AddSpellBonus(Target, 664, AbilityCastSpeed)
					end       
end

function tick(Caster, Target, DoTType, MinVal, MaxVal)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
end