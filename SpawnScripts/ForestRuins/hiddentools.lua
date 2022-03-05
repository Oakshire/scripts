--[[
    Script Name    : SpawnScripts/ForestRuins/hiddentools.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.01 04:03:10
    Script Purpose : 
  NOTE on how script on live works. 
  Player uses 'Sprinkle Nullification Powder' on hidden tools bush; 
  Bush glows with purple aura for 3-5 seconds; 
  Final glow intesnifies and appearance changes to mechanical device with same glowing aura; 
  'a Tool Guardian' spawns and attacks player; 
  Player can uses device and command_code 'Destroy Device'; 
  Quest is updated, Expolsion spell animation on device occurs, and visual of the device & aura disappears; 
  15-30 seconds later the aura returns on the invisable device (or the actual device if player didn't Destroy it); 
  3 seconds later the appearance changes back to a visable bush with the aura; 
  1-2 seconds later the aura fades, leaving the bush;       
   
--]]

local zone = GetZone(NPC)
local CACHES_QUEST_ID = 5492
local toolGuard = 1960098

function spawn(NPC)
    SetRequiredQuest(NPC, CACHES_QUEST_ID, 1, 0)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, CACHES_QUEST_ID) then
			if Message == "Spinkle nullification powder" then
				AddStepProgress(Spawn, FAVORS_QUEST_ID, 1, 1)
				SetModelType(NPC,5210)
			    	SpawnMob(NPC, toolGuard)
			    	Attack(toolGuard, Spawn)
				AddTimer(NPC,15000,Despawn)
			end
	end
end