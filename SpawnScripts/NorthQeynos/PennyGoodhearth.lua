--[[
	Script Name	: SpawnScripts/NorthQeynos/PennyGoodhearth.lua
	Script Purpose	: Penny Goodhearth 
	Script Author	: Dorbin
	Script Date	: 2022.01.11
	Script Notes	: 
--]]
local muffins = 5524

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
       if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
   else
		PlayFlavor(NPC, "voiceover/english/penny_goodhearth/qey_north/pennygoodhearth.mp3", "", "", 3200414666, 3603496424, Spawn)
        if GetQuestStep(Spawn,muffins)==1 then
		AddConversationOption(conversation, "Wait!  Duvo sent me to talk with you!", "Pickup")
        end
        AddConversationOption(conversation, "I'm sorry, I'll just get out of your way then.")
	    StartConversation(conversation, NPC, Spawn, "Shoo ... Shoo ... Out of my way. I'm so very late! If you keep pestering me, I'll never finish preparing Lord and Lady Ironforge's supper.")

	end
end

     function Pickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/penny_goodhearth/qey_north/pennygoodhearth000.mp3", "", "swear", 2560859604, 248794504, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.  I'll just be going", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "Duvo? Blast that rascal! He was supposed to pick up my muffin recipe this morning! Here it is ... Now, be gone ... I don't have time for idle chatter.")
end	

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,muffins, 1)
    end


