--[[
	Script Name	: SpawnScripts/Baubbleshire/MirfGuinders.lua
	Script Purpose	: Mirf Guinders 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Update: Dorbin 2022.01.05 - flavor, callout, quest cleanup
	Script Notes	: 
--]]

local InSearchoftheSepulcherofJahnda = 556
local Estle = 5440

function spawn(NPC)
    	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    	ProvidesQuest(NPC, Estle)
end

function respawn(NPC)
	spawn(NPC)
	OfferQuest(NPC, Estle)
end



function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)


	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/mirfguinders000.mp3", "", "", 35546, 2556985953, Spawn)
	if GetQuestStep(Spawn, InSearchoftheSepulcherofJahnda) == 1 then
	AddConversationOption(conversation, "Do you know anything about a Sepulcher? ", "Option1")
	end
    if GetQuestStep(Spawn, InSearchoftheSepulcherofJahnda) == 3 then
    AddConversationOption(conversation, "I have brought your crystals. Where are my directions?", "Option3")
	end
    if not HasCompletedQuest (Spawn, Estle) and not HasQuest(Spawn, Estle) then 
    AddConversationOption(conversation, "I don't need faith, I need work", "EstleSearch")
    end
    if
    GetQuestStep(Spawn,Estle) == 2 then
     AddConversationOption(conversation, "I have found the Shrine of Estle in the Downbelow.  It is quite the sight!", "FoundEstle")
    end    
    if HasCompletedQuest (Spawn, Estle) or HasQuest(Spawn, Estle) then 
    AddConversationOption(conversation, "Remind me.  Who is Estle?")
    end
    AddConversationOption(conversation, "I don't want to hear your lunacy. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Search within your soul! Reclaim your faith! Bristlebane lives within us. Do not abandon his mirth! We are not forsaken!")

end



function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/mirfguinders006.mp3", "", "nod", 303473158, 262617160, Spawn)
	AddConversationOption(conversation, "Where can I find this Sepulcher?", "Option2")
	AddConversationOption(conversation, "I am not interested in the Sepulcher. Farewell. ")
	StartConversation(conversation, NPC, Spawn, "The Sepulcher of Jahnda? I know of it. I happened to discover its location when I was in a part of the catacombs the locals call Vermin's Snye.  ")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, InSearchoftheSepulcherofJahnda, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/mirfguinders007.mp3", "", "ponder", 1102575551, 1768318615, Spawn)
	AddConversationOption(conversation, "I shall return with your donation.  ")
	StartConversation(conversation, NPC, Spawn, "When the temple of Mirf Guinders has a donation of jade golem crystals then I will offer you directions to the Sepulcher of Jahnda.")
end

function Option2(NPC, Spawn)
    SetStepComplete(Spawn, InSearchoftheSepulcherofJahnda, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
     PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/mirfguinders008.mp3", "", "nod", 2667033451, 2560833588, Spawn)
	AddConversationOption(conversation, "Thank you for your help. Farewell.  ")
	StartConversation(conversation, NPC, Spawn, "Ah, yes, the key. Unfortunately the key was swiped from my pack by a wretched being called the Rat Queen, wrangler of rodents. Find her and you find your key. Then you can follow my notes to the Sepulcher of Jahnda.")
end

function EstleSearch(NPC, Spawn)
     	local conversation = CreateConversation()
    AddConversationOption(conversation, "Listen, I will help you if you quit preaching", "DownBelow")
    AddConversationOption(conversation, "I don't want to hear your lunacy. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Ah, give praises! You have been sent by the gods! I need a hardy crusader, like you, to explore the tunnels of Bristlebane in the Down Below. Find the Shrine of Estle and confirm its existance!")
     PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/mirfguinders001.mp3", "", "cheer", 1245652082, 1122304682, Spawn)
end

function DownBelow(NPC, Spawn)
     	local conversation = CreateConversation()
    if not HasCompletedQuest (Spawn, Estle) and not HasQuest(Spawn, Estle) then 
    AddConversationOption(conversation, "I will find the shrine in the Down Below.", "WillExplore")
    end
    AddConversationOption(conversation, "Would that be Estle Bristlebane?", "WhoIsEstle")
    AddConversationOption(conversation, "I don't want to hear your lunacy. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Go to the Down Below! Look for the grand hall graced with three statues of Estle, the Tamer of Wild Souls. After you have found it come back to me! I will reward you with some coin.")
    PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/mirfguinders002.mp3", "", "nod", 1238322325, 3908688686, Spawn)
end

function WillExplore (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Estle)   
 
end

function WhoIsEstle(NPC, Spawn)
    local conversation = CreateConversation()
    FaceTarget(NPC, Spawn)
    
    if not HasCompletedQuest (Spawn, Estle) and not HasQuest(Spawn, Estle) then 
    AddConversationOption(conversation, "I will find the shrine in the Down Below.", "WillExplore")
    end
    if HasCompletedQuest (Spawn, Estle) or HasQuest(Spawn, Estle) then 
    AddConversationOption(conversation, "Oh, that's right.  Thank you for the reminder.")
    end
    AddConversationOption(conversation, "I don't want to hear your lunacy. Farewell.")
	StartConversation(conversation, NPC, Spawn, "What!  Do they teach nothing to young people today?  Estle was an apostle of Rodcet Nife, a Priest of Life.  Together with Vhalen and his bards of Bristlebane, they defended Qeynos during the War Of Plagues!")
     PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/mirfguinders003.mp3", "", "boggle", 706812134, 249250177, Spawn)
end

function FoundEstle(NPC, Spawn)
    SetStepComplete(Spawn, Estle, 2)
        FaceTarget(NPC, Spawn)
     local conversation = CreateConversation()
    AddConversationOption(conversation, "Good luck to you.")
	StartConversation(conversation, NPC, Spawn, "Oh, thank our mirthful Bristlebane!  The Shrine of Estle has finally been revealed!  Such a place must resonate with the benevolence of the gods.  I must celebrate and venture down there myself to behold its glory with my own eyes!  Here is your coin.")
    PlayFlavor(NPC, "", "", "396", 0, 0, Spawn)
end


function InRange(NPC, Spawn)
    if not HasQuest(Spawn,Estle) and not HasCompletedQuest(Spawn,Estle) and GetLevel(Spawn) >=5 then
        if math.random(1, 100) <= 80 then
        FaceTarget(NPC, Spawn)
	    local randomCall = MakeRandomInt(1, 2)
	    if randomCall == 1 then
		PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/mirfguinders000.mp3", "Search within your soul! Reclaim your faith! Bristlebane lives within us. Do not abandon his mirth! We are not forsaken!", "orate", 35546, 2556985953, Spawn)
	    elseif randomCall == 2 then
    	PlayFlavor(NPC, "voiceover/english/mirf_guinders/qey_village06/100_mirf_guinders_multhail1_59e52ebd.mp3", "Good adventurer, have faith and be well!  Perhaps one day you too may serve Bristlebane!", "orate", 300423478, 2139393363, Spawn)
	    end
        end
    end
end
