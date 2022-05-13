--[[
    Script Name    : SpawnScripts/NorthQeynos/GrettaSteinbeard.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.01 01:04:40
    Script Purpose : 
                   : 
--]]

local fish = 5535

function spawn(NPC)
ProvidesQuest(NPC, fish)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
        end
     else   
	    FaceTarget(Spawn, NPC)
        PlayFlavor(NPC, "voiceover/english/gretta_steinbeard/qey_north/grettasteinbeard_x1.mp3", "", "hello", 35615365, 1303938108, Spawn)
	    local conversation = CreateConversation()
            if GetQuestStep(Spawn,fish)==2 then
        	AddConversationOption(conversation, "Here are your fish!  You didn't warn me the smell would nearly knock me out.", "Delivered")
        	end
	    	if not HasQuest(Spawn,fish) and not HasCompletedQuest(Spawn, fish) then
        	AddConversationOption(conversation, "You do have quite a nice place here.", "Work")
            end
        AddConversationOption(conversation, "I plan to enjoy myself.  Thanks.")
    	StartConversation(conversation, NPC, Spawn, "Greetings, traveler!  My tavern's warm, and the company's good.")
        end
end	

function Work(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_gretta_steinbeard/qey_north/grettasteinbeard_x000.mp3", "", "ponder", 612712171, 2321965832, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "I've got some time.  What do you need?", "Delivery2")
	AddConversationOption(conversation, "I really don't. Sorry.","sigh")
	StartConversation(conversation, NPC, Spawn, "Why thank you sir!  Say, would you be willing to spend a little time to help a busy woman?")
end	

function sigh(NPC,Spawn)
    PlayFlavor(NPC, "", "", "sigh", 0, 0, Spawn)
end    

function Delivery2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_gretta_steinbeard/qey_north/grettasteinbeard_x001.mp3", "", "", 179611746, 3337706668, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "I would be happy to lend a hand.", "Delivery3")
	AddConversationOption(conversation, "Sounds too fishy for me.", "sigh")
	StartConversation(conversation, NPC, Spawn, "Well, I need a delivery of fish for tonight's supper.  I'm making my specialty.  Fish stuffed with fish smothered in a fish sauce and served over a bed of fish, but I'm so busy here doing all the things I have to do that I haven't been able to go to Umli's Fish Market.  If I don't get the fish, it will be turnip stew... again.")
end	

function Delivery3(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,fish)
    end
   
 
function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/gretta_steinbeard/qey_north/grettasteinbeard_x003.mp3", "", "thanks", 3675257953, 3697234196, Spawn)
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Thanks.", "FinishQuest")
	AddConversationOption(conversation, "Great.  Now have I have to get rid of this fish smell.", "Chuckle")
	StartConversation(conversation, NPC, Spawn, "That last comment aside, I thank you.  And some of the mudglub tavern patrons who don't have the courage to face that shell-skinned Umli and yet complain about the turnip stew!  Well, here's some coin for your pocket.  You have no idea how valuable your service has been.")
end	

function Chuckle(NPC,Spawn)
     PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fish, 2)
end   

function FinishQuest(NPC,Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fish, 2)
end 