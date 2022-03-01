--[[
    Script Name    : SpawnScripts/Nektulos/nekfmushroomayoung.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.17 09:05:41
    Script Purpose : Required by the quest "Mushroom Madness"
                   : 
--]]

local MushroomMadness = 437

function spawn(NPC)
SetPlayerProximityFunction(NPC, 5, "InRange")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
if GetQuestStep(Spawn, MushroomMadness) == 1 then
AddPrimaryEntityCommand(Spawn, NPC, "Pick a Dark Forest Cap", 2, "", "", 10000, "")
SpawnSet(NPC, "display_hand_icon", 1)
SpawnSet(NPC, "show_command_icon", 1)
else
SpawnSet(NPC, "display_hand_icon", 0)
SpawnSet(NPC, "show_command_icon", 0)    
end
   end

function casted_on(NPC, Spawn, SpellName)
		if SpellName == 'Pick a Dark Forest Cap' then
	     AddStepProgress(Spawn, MushroomMadness, 1, 1)
	     RemoveSpawnAccess(NPC, Spawn)
	     AddTimer(NPC, 30000, "return_access", 1, Spawn)
	     end
        end
        
        
function return_access(NPC, Spawn)
AddSpawnAccess(NPC, Spawn)
end