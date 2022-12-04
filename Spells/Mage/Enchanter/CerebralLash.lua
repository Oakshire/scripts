--[[
    Script Name    : Spells/Mage/Enchanter/CerebralLash.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.04 07:12:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, DoTMin, DoTMax, DDType, DDMin, DDMax)
    if DoTMax ~= nil and DoTMin < DoTMax then
        SpellDamage(Target, DoTType, math.random(DoTMin, DoTMax))
    else
        SpellDamage(Target, DoTType, DoTMin)
    end
    
    AddTimer(23900, "migraine")
end

function migraine(Caster, Target, DoTType, DoTMin, DoTMax, DDType, DDMin, DDMax)
    	Spell = GetSpell(5505, GetSpellTier())
    	SetSpellDataIndex(Spell, 0, DDType)
		SetSpellDataIndex(Spell, 1, DDMin)
		SetSpellDataIndex(Spell, 2, DDMax)
		CastCustomSpell(Spell, Caster, Target)
end

function tick(Caster, Target, DoTType, DoTMin, DoTMax)
    if DoTMax ~= nil and DoTMin < DoTMax then
        SpellDamage(Target, DoTType, math.random(DoTMin, DoTMax))
    else
        SpellDamage(Target, DoTType, DoTMin)
    end
end

