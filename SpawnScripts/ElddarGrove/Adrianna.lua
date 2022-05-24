--[[
	Script Name	: SpawnScripts/ElddarGrove/Adrianna.lua
	Script Purpose	: Adrianna <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.05.23
	Script Notes	: 
--]]
local Delivery = 5562

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_adrianna/qey_elddar/merchantadrianna000.mp3", "", "", 2772064820, 4249063361, Spawn)
    if GetQuestStep(Spawn,Delivery)==1 then
    AddConversationOption(conversation, "I am here to pick up Harron Griswald's order.", "Delivered")
    end
    AddConversationOption(conversation, "No, I am good to go thanks. ")
	StartConversation(conversation, NPC, Spawn, "Hello there!  Can I interest you in any wares for your travels?")
end
end

function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/merchant_adrianna/qey_elddar/merchantadrianna001.mp3", "", "", 1945726152, 1940591469, Spawn)
	AddConversationOption(conversation, "You can count on me.  I'll make sure he gets it.", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Yes, I have his order ready for him.  I'm going to trust you to get it there in a timely manner.  He's had a run of hard luck since his fishing boat sunk.  I don't want it to get worse!")
end

function dlg_9_2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "thanks", 0, 0, Spawn)
    SetStepComplete(Spawn,Delivery, 1)
    end
