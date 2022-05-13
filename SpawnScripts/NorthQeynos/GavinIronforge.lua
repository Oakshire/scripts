--[[
    Script Name    : SpawnScripts/NorthQeynos/GavinIronforge.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 12:04:36
    Script Purpose : 
                   : 
--]]
local Delivery = 5542

function spawn(NPC)
AddTimer(NPC, 5000, "EmoteLoop")    
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")		
   ProvidesQuest(NPC, Delivery)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC,Spawn)
       if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
   else     
        if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
 	        if math.random(1, 100) <= 90 then
    	    FaceTarget(NPC, Spawn)
		    PlayFlavor(NPC, "voiceover/english/gavin_ironforge/qey_north/100_son_ironforge_gavin_g4_callout1_a27add9d.mp3", "Who enters?  You wish to help me?  I am very busy today!", "tapfoot", 66670192, 2616890614, Spawn)
            end
        else
    	    if math.random(1, 100) <= 70 then
    	    FaceTarget(NPC, Spawn)
		    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
            end     
        end
end
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
        	PlayFlavor(NPC, "voiceover/english/gavin_ironforge/qey_north/gavinironforge000.mp3", "", "hello", 57706546, 3929365008, Spawn)
	        local conversation = CreateConversation()
    	    if not HasQuest(Spawn,Delivery) and not HasCompletedQuest(Spawn, Delivery) then
        	AddConversationOption(conversation, "Is there anything you need doing?", "Delivery1")
            end
            if GetQuestStep(Spawn,Delivery)==2 then
        	AddConversationOption(conversation, "Rowena seemed quite pleased with your craftsmanship.", "Delivered")
        	end
        	AddConversationOption(conversation, "Just browsing your wares.")
    	StartConversation(conversation, NPC, Spawn, "A hail and well met!  Welcome to the Jewel Box.  I am Gavin Ironforge, an apprentice in this shop. I help Tara with her duties, but we're unusually busy today.")
   
    end
end

function Delivery1(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/gavin_ironforge/qey_north/gavinironforge001.mp3", "", "", 3182974274, 1240192562, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Sure thing.  What needs delivering?", "Delivery2")
	AddConversationOption(conversation, "Sounds too important for me.  I'll leave it for someone else.")
	StartConversation(conversation, NPC, Spawn, "I must send a package to the Temple of Life.  The priests are eagerly waiting for it!  I could use someone to deliver it for me if you have any free time.  We will both benefit.")
end	 

function Delivery2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Delivery)
    end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/gavin_ironforge/qey_north/gavinironforge003.mp3", "", "thanks", 1393179376, 3856557471, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Think nothing of it.", "FinishQuest")
	StartConversation(conversation, NPC, Spawn, "You preserve my faith in Qeynos!  Qeynos citizens continue to be the most trustworthy citizens in all of Norrath.")
end	

function FinishQuest(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,Delivery, 2)
    end
    
    
function EmoteLoop(NPC)
    local emoteChoice = MakeRandomInt(1,3)

    if emoteChoice == 1 then
-- ponder
        PlayAnimation(NPC, 12030)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    elseif emoteChoice == 2 then
-- sniff
        PlayAnimation(NPC, 12329)
        AddTimer(NPC, MakeRandomInt(6000,9000), "EmoteLoop")	
    else
-- tapfoot
        PlayAnimation(NPC, 13056)
        AddTimer(NPC, MakeRandomInt(15000,18000), "EmoteLoop")	
    end
end