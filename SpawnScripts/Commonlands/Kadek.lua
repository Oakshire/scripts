--[[
    Script Name    : SpawnScripts/Commonlands/Kadek.lua
    Script Author  : Premierio015
    Script Date    : 2021.03.14 05:03:05
    Script Purpose : 
                   : 
--]]

local QUEST = 406 -- Filling the Coffers quest

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, QUEST) == 2 and HasQuest(Spawn, QUEST) then
	PlayFlavor(NPC, "", "Don't hurts! Money in mailbox outside.", "", 1689589577, 4560189, Spawn)
	else
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "", "The taxes here are much harsher than they should be.", "", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "", "What do the kerrans contribute to Freeport? Nothing!", "", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
	PlayFlavor(NPC, "", "The kerrans would make convenient scapegoats for our situation, except that they live the same way we do... still.", "", 1689589577, 4560189, Spawn)
end
  end
   end

function respawn(NPC)
	spawn(NPC)
end

