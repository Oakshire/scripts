function cast(Caster, Target, Regen, MP)
	AddSpellBonus(Target, 602, Regen)
	AddSpellBonus(Target, 619, MP)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end