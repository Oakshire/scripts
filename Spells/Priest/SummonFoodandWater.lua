--[[
	Script Name	: Summon Food and Water
	Script Purpose	: Summons 5 Sacred Food and 5 Sacred Water to the target
	Script Author	: Zcoretri
	Script Date	: 2009.01.10
	Script Notes	: JA: Going to ask LE for an "Array" spell_data type for passing multiple item IDs
--]]

--[[function cast(Caster, Target, SummonType, MinQty, MaxQty, Item1, Item2)

	if SummonType == "FoodWater" then

		if FoodID ~= nil and WaterID ~= nil then
			SummonItem(Target, 36884, 5)
			SummonItem(Target, 36885, 5)
			-- SummonItem(Target, FoodID, MinQty) <Dev Note:need to add a qty param>
		end

	else
	end

end--]]


function cast(Caster, Target, MinQty, MaxQty, Item1, Item2)
			SummonItem(Target, 36884, 0)
			SummonItem(Target, 36884, 0)
			SummonItem(Target, 36884, 0)
			SummonItem(Target, 36884, 0)
			SummonItem(Target, 36884, 0)
			SummonItem(Target, 36885, 0)
			SummonItem(Target, 36885, 0)
			SummonItem(Target, 36885, 0)
			SummonItem(Target, 36885, 0)
			SummonItem(Target, 36885, 0)
	    SendMessage(Target, "5 Sacred Food and Water have been provided to you.")
   

end

