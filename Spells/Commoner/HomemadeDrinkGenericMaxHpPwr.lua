function cast(Caster, Target, Regen, HP, MP)
	AddSpellBonus(Target, 603, Regen)
	AddSpellBonus(Target, 606, HP)
	AddSpellBonus(Target, 619, MP)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end