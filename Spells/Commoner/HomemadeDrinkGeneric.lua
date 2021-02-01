--[[
	Script Name		:	Spells/Commoner/HomemadeDrinkGeneric.lua
	Script Purpose	:	generic script to handle provisioner and tradeskilled drinks.
	Script Author	:	Neatz09
	Script Date		:	1/25/2021
	Script Notes	:
--]]

function cast(Caster, Target, Regen) -- Add more params as needed for the values from the db
	AddSpellBonus(Target, 603, Regen)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end