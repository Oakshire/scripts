--[[
    Script Name    : Spells/Priest/Druid/Subterfuge.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.30 05:11:22
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases Threat to targets in Area of Effect by 1,206 
*Roots targets in Area of Effect
*Epic targets gain an immunity to Root and Ability attacks will hit for their maximum damage. effects of 27.0 seconds and duration is reduced to 3.0 seconds.

--]]

function cast(Caster, Target, Hate)
    AddHate(Caster, Target, Hate, 1)
    SetSpeedMultiplier(Target, 0)
    
    if IsEpic then
    AddTimer(Target, 3000, "endroot")

    end

end

function endroot(Caster, Target)
    --Casts RootImmunity on target.
    Spell = GetSpell(5504, GetSpellTier())
	CastCustomSpell(Spell, Caster, Target)
    
    --Cancels Subterfuge
    CancelSpell()
end


    
function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1.0)
end

