  --[[
    	Script Name		:	ItemScripts/cure_test.lua
    	Script Purpose	:	
    	Script Author	:	Emagi/Image
    	Script Date		:	7.1.2022
    	Script Notes	:	This is to test having a used item CureByType and pass a target via ItemScripts
    --]]
    function used(Item, Player, Target)
    	local effect_type = GetItemEffectType(Item)
    	
    	if effect_type < 7 then -- 7 is cure all
    		CureByType(1, effect_type, "", (GetLevel(Player) * 1.08) + 1, Target, Player)
    	elseif effect_type == 7 then
    		CureByType(1, 1, "", (GetLevel(Player) * 1.08) + 1, Target, Player)
    		CureByType(1, 2, "", (GetLevel(Player) * 1.08) + 1, Target, Player)
    		CureByType(1, 3, "", (GetLevel(Player) * 1.08) + 1, Target, Player)
    		CureByType(1, 4, "", (GetLevel(Player) * 1.08) + 1, Target, Player)
    		CureByType(1, 5, "", (GetLevel(Player) * 1.08) + 1, Target, Player)
    		CureByType(1, 6, "", (GetLevel(Player) * 1.08) + 1, Target, Player)
    	end
    end
