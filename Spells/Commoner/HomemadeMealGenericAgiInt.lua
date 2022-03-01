function cast(Caster, Target, Regen, Buff)
	AddSpellBonus(Target, 602, Regen)
	AddSpellBonus(Target, 2, Buff)
	AddSpellBonus(Target, 4, Buff)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end