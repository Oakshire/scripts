--[[
	Script Name	: SpawnScripts/GraystoneYard/BriceStrongmend.lua
	Script Purpose	: Brice Strongmend 
	Script Author	: Dorbin
	Script Date	: 2022.03.10
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")
local FishingPole = 5505

function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
	ProvidesQuest(NPC, FishingPole)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn) --Quest Callout
    if math.random(1, 100) <= 75 then
        if not HasLanguage(Spawn,1)then
        Garbled(NPC,Spawn)
        else
    end   
 end
 
function hailed(NPC, Spawn)
  	conversation = CreateConversation()          
    if not HasLanguage(Spawn,1)then
    FaceTarget(NPC, Spawn)    
    Garbled(NPC,Spawn)
    else

        if GetQuestStep(Spawn, FishingPole) == 2 then
		AddConversationOption(conversation, "Here is your new pole from Moyna.", "GetPole")
        end
        if not HasQuest(Spawn, FishingPole) and not HasCompletedQuest(Spawn, FishingPole) then
		AddConversationOption(conversation, "This must be a great fishing spot.", "FindingWork")
        end
    	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/brice_strongmend/qey_village03/bricestrongmend.mp3", "", "hello", 2050106865, 4220019235, Spawn)
	AddConversationOption(conversation, "Certainly is. Good luck.")
	StartConversation(conversation, NPC, Spawn, "Greetings! Fine day to be fishing to be sure!")
        end
    end
end

function FindingWork(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/brice_strongmend/qey_village03/bricestrongmend000.mp3", "", "agree", 720910196, 1903725570, Spawn)
	AddConversationOption(conversation, "I'll pick up a new pole for you. She is near by.","ProvidedItPays")
	AddConversationOption(conversation, "Afraid I'm busy. Sorry.")
	StartConversation(conversation, NPC, Spawn, "You've a sharp eye, I'll give you that! Truth be told, I've been here all day and every fish has gotten away. Would you do me a favor and pickup a new pole for me from Tacklemaster Moyna? I'd hate to lose this fishing spot!")
end

function ProvidedItPays(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/brice_strongmend/qey_village03/bricestrongmend001.mp3", "", "", 2959796391, 3700164785, Spawn)
	AddConversationOption(conversation, "I'll be back shortly.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Grand! Take these coins and speak with Tacklemaster Moyna. Buy the finest pole you can with this coin. I can't afford the best quality of gear, fishing doesn't pay much after all, but it sure is fun!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, FishingPole)
end

function GetPole(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/brice_strongmend/qey_village03/bricestrongmend002.mp3", "", "thank", 2597129454, 1443896248, Spawn)
	AddConversationOption(conversation, "Nearly all of it. Moyna gave you the best you could get.", "Returned")
	AddConversationOption(conversation, "Moyna said its not the best, but here is the change.", "Returned")	
	StartConversation(conversation, NPC, Spawn, "Oh, this looks like a bute! How much did it set me back?")
end

function Returned(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/brice_strongmend/qey_village03/bricestrongmend003.mp3", "", "agree", 3257008842, 2595858488, Spawn)
	AddConversationOption(conversation, "I don't need the pole, but I'll take the money!","Done")
	AddConversationOption(conversation, "Your old fishing pole has seen better days. Good luck.","Done")
	StartConversation(conversation, NPC, Spawn, "An honest one you are! I can see you'll fit in well in Qeynos! Please, take the leftover money. With this new pole I'm sure to catch more than my share of fish. Then I can sell the rest. Say, would you like my old fishing pole?")
end

function Done(NPC,Spawn)
	SetStepComplete(Spawn, FishingPole, 2)
end

