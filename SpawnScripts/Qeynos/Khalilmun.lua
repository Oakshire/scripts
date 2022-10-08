--[[
	Script Name	: SpawnScripts/SouthQeynos/Khalilmun.lua
	Script Purpose	: Khalil`mun <Alchemist>
	Script Author	: Dorbin
	Script Date	: 2022.05.12
	Script Notes	: 
--]]
require "SpawnScripts/Generic/DialogModule"

local dyes = 5538
local potion = 5555
local wings = 5556

dofile("SpawnScripts/Generic/GenericMerchantVoiceOvers.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC,potion)
    ProvidesQuest(NPC,wings)
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
        	PlayFlavor(NPC, "", "", "beckon", 0, 0, Spawn)
	--[[        local conversation = CreateConversation()
      	    if not HasQuest(Spawn,potion) and not HasCompletedQuest(Spawn, potion) then
          	AddConversationOption(conversation, "I would like to know if you have any insights on potion making.", "Potion1")
            end
            if GetQuestStep(Spawn,potion)==2 then
          	AddConversationOption(conversation, "I've gathered all the ingredients you requested from the Peat Bog.", "PotionDone")
            end
            if not HasQuest(Spawn,wings) and not HasCompletedQuest(Spawn, wings) then
          	AddConversationOption(conversation, "Have any work I can do for your shop?", "Wings1")
            end
            if GetQuestStep(Spawn,wings)==2 then
          	AddConversationOption(conversation, "Take a look at these shriller wings. Do they work for what you need?", "WingsDone")
            end
            if GetQuestStep(Spawn,dyes)==1 then
        	AddConversationOption(conversation, "Daniell Clothspinner said you had an order she needed picked up?", "Pickup")
        	end
        	AddConversationOption(conversation, "Actually, I'm just browsing.")
    	    StartConversation(conversation, NPC, Spawn, "Come in!  Come in.  A mages greeting to you my friend!  Now, what can I mix for you?  A potion?  A salve perhaps?  Ah, I know you need alchemical supplies don't you?")
   	]]--
   	
   	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Come in!  Come in.  A mages greeting to you my friend!  Now, what can I mix for you?  A potion?  A salve perhaps?  Ah, I know you need alchemical supplies don't you?")
	Dialog.AddVoiceover("voiceover/english/merchant_khalil_mun/qey_south/khalilmun.mp3", 4229538394, 3475168559)
      	    if not HasQuest(Spawn,potion) and not HasCompletedQuest(Spawn, potion) then
          	Dialog.AddOption("I would like to know if you have any insights on potion making.", "Potion1")
            end
            if GetQuestStep(Spawn,potion)==4 then
          	Dialog.AddOption("I've gathered all the ingredients you requested from the Peat Bog.", "PotionDone")
            end
            if not HasQuest(Spawn,wings) and not HasCompletedQuest(Spawn, wings) then
          	Dialog.AddOption("Have any work I can do for your shop?", "Wings1")
            end
            if GetQuestStep(Spawn,wings)==2 then
          	Dialog.AddOption( "Take a look at these shriller wings. Do they work for what you need?", "WingsDone")
            end
            if GetQuestStep(Spawn,dyes)==1 then
        	Dialog.AddOption("Danielle Clothspinner said you had an order she needed picked up?", "Pickup")
        	end
    Dialog.AddOption("Actually, I'm just browsing.")
	Dialog.Start()
    end
end 



function Pickup(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    Dialog.AddDialog("Ah, yes.  Dyes.  Always dyes.  Well, she is one of my best customers!  Here.  Take these two tubs.  That looks like Danielle's coin pouch- I'll empty that.  Are you sure you can't use an alembic or two?  They're on sale!")
	Dialog.AddVoiceover("voiceover/english/merchant_khalil_mun/qey_south/khalilmun000.mp3", 938827221, 1172248850)
	Dialog.AddOption( "This will do just fine.  Thanks.", "DyeUpdate")
	Dialog.Start()
end


function DyeUpdate(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,dyes, 1)
    end   

function Potion1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Excellent!  I shall explain.  At its most basic level, potion is about combining specific reagents to produce specific effects.  Take this cloudly looking potion for example.  All it requires is a few simple ingredients I gather from the near by Peat Bog.  Perhaps you could begin to understand the rudimentary elements of the process if you gather the components for this potion.")
	Dialog.AddVoiceover("voiceover/english/merchant_khalil_mun/qey_south/khalilmun001.mp3", 1469692776, 2022256144)
	Dialog.AddOption("Sounds easy enough. Will I get to use the ingredients once I get them?", "Potion2")
	Dialog.AddOption("I really don't feel like slogging through the muck today.  Sorry.")
	Dialog.Start()
end


function Potion2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,potion)
    end
    
 function PotionDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My, you've done well!  These are very acceptable specimines, especially for your first time.  Perhaps in the future I could teach you more about gathering reagents.  Here are a few coins for your pay.  Back to studies now.  Run along.")
	Dialog.AddVoiceover("voiceover/english/merchant_khalil_mun/qey_south/khalilmun003.mp3", 865923909, 1629870869)
	Dialog.AddOption("Alright.  Thank you.", "FinishQuest1")
	Dialog.AddOption("Run along?!  I need a bath after slogging through that mess.","FinishQuest2")
	Dialog.Start()
end


function FinishQuest1(NPC,Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,potion, 4)
end 
function FinishQuest2(NPC,Spawn)
    PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,potion, 4)
end 


function Wings1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I've pleanty of work that needs to be done.  I need rabid shriller wings, several of them.  Go to the catacombs and there you'll find pleanty of the wings.  Of course, you'll be rewarded for your efforts.")
	Dialog.AddVoiceover("voiceover/english/merchant_khalil_mun/qey_south/khalilmun005.mp3", 1992360074, 1666083068)
	Dialog.AddOption("Easy enough.  I'll return once I have them.", "Wings2")
	Dialog.AddOption("Catacombs? Rabid? Sounds like a combination I should avoid.")
	Dialog.Start()
end

function Wings2(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,wings)
    end
 
 function WingsDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
    Dialog.AddDialog("This is excellent! You've done a fantastic job.  Take this coin and my thanks.")
	Dialog.AddVoiceover("voiceover/english/merchant_khalil_mun/qey_south/khalilmun006.mp3", 1833727078, 1985595256)
	Dialog.AddOption( "Glad to help.  Thank you.", "FinishWings")
	Dialog.Start()
end


function FinishWings(NPC,Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,wings, 2)
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
					