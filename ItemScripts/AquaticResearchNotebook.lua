--[[
    Script Name    : ItemScripts/AquaticResearchNotebook.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.25 06:09:58
    Script Purpose : 
                   : 
--]]

function examined(Item, Player)
  local zone = GetZone(Player)
if GetZoneID(zone)~= 325 then
    	SendMessage(Player, "The notebook is a research manual for aquatic creatures living on the Isle of Refuge.  It won't do you any good now that you have left the isle.")
else
if not HasQuest(Player,5757) and not HasCompletedQuest(Player, 5757) then
 OfferQuest(nil,Player,5757)
end
end
end
