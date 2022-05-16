--[[
	Script Name	: SpawnScripts/SouthQeynos/Khalilmun.lua
	Script Purpose	: Khalil`mun <Alchemist>
	Script Author	: Dorbin
	Script Date	: 2022.05.12
	Script Notes	: 
--]]

local dyes = 5538
local fairies = 5555
local wings = 5556

dofile("SpawnScripts/Generic/GenericMerchantVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC,fairies)
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
    if GetFactionAmount(Spawn,11)<0 then
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
        	PlayFlavor(NPC, "voiceover/english/merchant_khalil_mun/qey_south/khalilmun.mp3", "", "beckon", 4229538394, 3475168559, Spawn)
	        local conversation = CreateConversation()
  --  	    if not HasQuest(Spawn,fairies) and not HasCompletedQuest(Spawn, fairies) then
  --      	AddConversationOption(conversation, "You appear preoccupied.  Need any help?", "Delivery")
  --        end
            if GetQuestStep(Spawn,dyes)==1 then
        	AddConversationOption(conversation, "Daniell Clothspinner said you had an order she needed picked up?", "Pickup")
        	end
        	AddConversationOption(conversation, "Actually, I'm just browsing.")
    	    StartConversation(conversation, NPC, Spawn, "Come in!  Come in.  A mages greeting to you my friend!  Now, what can I mix for you?  A potion?  A salve perhaps?  Ah, I know you need alchemical supplies don't you?")
   
    end
end 

      function Pickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_khalil_mun/qey_south/khalilmun000.mp3", "", "agree", 938827221, 1172248850, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "This will do just fine.  Thanks.", "DyeUpdate")
	StartConversation(conversation, NPC, Spawn, "Ah, yes.  Dyes.  Always dyes.  Well, she is one of my best customers!  Here.  Take these two tubs.  That looks like Daniell's coin pouch- I'll empty that.  Are you sure you can't use an alembic or two?  They're on sale!")
end	

function DyeUpdate(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,dyes, 1)
    end   


--[[
				    local choice = math.random(1,5)
					if choice == 1 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_aoi_gm_c5e79ff5.mp3", "Hello there! Can I interest you in some of the finest merchandise this side of Norrath?", "", 3892898109, 888385496, Spawn)
					elseif choice == 2 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "", 857840270, 941389485, Spawn)
					elseif choice == 3 then
	                    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "", 4271285862, 1774320762, Spawn)
					elseif choice == 4 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock. You'll never beat this price in the city. I guarantee it!", "", 2447200130, 2600666744, Spawn)
					elseif choice == 5 then
					    PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "", 4242410919, 3368229094, Spawn)
					end
]]--					
					