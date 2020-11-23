--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/Anikra.lua
    Script Author  : Ememjr
    Script Date    : 2019.05.11 03:05:38
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)

end

function hailed(NPC, Spawn)
	goblin = GetSpawn(NPC, 270008)
	if goblin == nil or IsAlive(goblin) == false then
		FaceTarget(NPC, Spawn)	
		choice = math.random(1, 2) 	    
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/anikra/boat_06p_tutorial02_fvo_001.mp3", "Thanks for saving me", "thanks", 3802219844, 3242323771)
		else
			PlayFlavor(NPC, "voiceover/english/anikra/boat_06p_tutorial02/anikra_0_003.mp3", "I don't know how I did that. What was that?", "boggle", 927876289, 3048340606)
		end
	else
		PlayFlavor(NPC, "voiceover/english/anikra/boat_06p_tutorial02_fvo_002.mp3", "I really miss my husband. Why did those smugglers have to throw him overboard?", "sigh", 1493499523, 2767493059)
	end
end

--[[
function callDrake(NPC, Spawn)
    FaceTarget(NPC, Spawn)
Say(NPC,"I have made it past FaceTarget")
    local drake = GetSpawn(Spawn, 270013)
Say(NPC, "I have set the local drake to the spawn id")
Say(NPC, "Test " .. drake)
    SpawnSet(drake, "visual_state", 10783)

end
]]--

function respawn(NPC)

end
