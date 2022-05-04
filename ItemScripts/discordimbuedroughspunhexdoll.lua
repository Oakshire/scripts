--[[
    Script Name    : ItemScripts/discordimbuedroughspunhexdoll.lua
    Script Author  : neatz09
    Script Date    : 2022.05.04 01:05:18
    Script Purpose : 
                   : 
--]]

--[[ Begin Item Effects

* Applies Hex of Discord when Activated.  Lasts for 1 minute 48 seconds.
	* Decreases INT, WIS, AGI and STR of target by 15.6
	* Decreases Max Health of target by 1.0%
	* The casting time of Hex of Discord is 1.0 second and the reuse time of the spell is 5 minutes

End Item Effects--]]

function examined(Item, Player)
SetInfoStructUInt(Player, "status_points", 20000)
end