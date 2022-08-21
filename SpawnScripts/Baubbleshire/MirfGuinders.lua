--[[
	Script Name	: SpawnScripts/Baubbleshire/MirfGuinders.lua
	Script Purpose	: Mirf Guinders 
	Script Author	: Scatman
	Script Date	: 2009.09.27
	Script Update: flavor, callout, quest cleanup - 2022.01.05 Dorbin
	Script Update: Updated Dialog Format - 2022.08.18 Dorbin
--]]
require "SpawnScripts/Generic/DialogModule"

local InSearchoftheSepulcherofJahnda = 556
local Estle = 5440

function spawn(NPC)
    	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    	ProvidesQuest(NPC, Estle)
end

function respawn(NPC)
	spawn(NPC)
end



function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    PlayFlavor(NPC, "", "", "noway", 0, 0, Spawn)
    else        
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Search within your soul! Reclaim your faith! Bristlebane lives within us. Do not abandon his mirth! We are not forsaken!")
	Dialog.AddVoiceover("voiceover/english/mirf_guinders/qey_village06/mirfguinders000.mp3", 35546, 2556985953)
	if GetQuestStep(Spawn, InSearchoftheSepulcherofJahnda) == 1 then
	Dialog.AddOption("Do you know anything about a Sepulcher? ", "Option1")
	end

	if not HasCompletedQuest (Spawn, Estle) and not HasQuest(Spawn, Estle) and GetClass(Spawn) >= 11 and GetClass(Spawn) <= 20 and GetLevel(Spawn) >=5 then 
	Dialog.AddOption("I already pursue my faith, but I need work.", "EstleSearch")
    end
	if not HasCompletedQuest (Spawn, Estle) and not HasQuest(Spawn, Estle) and GetLevel(Spawn) >=5  then 
	Dialog.AddOption("I don't need faith, I need work.", "EstleSearch")
    end
    if GetLevel(Spawn) < 5 then
 	Dialog.AddOption("I'm afraid I need more experience before I explore my faith.")
    end       
    if GetQuestStep(Spawn, InSearchoftheSepulcherofJahnda) == 3 then
	Dialog.AddOption("I have brought your crystals. Where are my directions?", "Option3")
	end
	if HasCompletedQuest (Spawn, Estle) or HasQuest(Spawn, Estle) then 
	Dialog.AddOption("Remind me.  Who is Estle?","WhoIsEstle")
    end
    if GetQuestStep(Spawn,Estle) == 2 then
	Dialog.AddOption("I have found the Shrine of Estle in the Downbelow.  It is quite the sight!", "FoundEstle")
    end
	Dialog.AddOption("I don't want to hear your lunacy. Farewell.")
	Dialog.Start()
end
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Sepulcher of Jahnda? I know of it. I happened to discover its location when I was in a part of the catacombs the locals call Vermin's Snye.")
	Dialog.AddVoiceover("voiceover/english/mirf_guinders/qey_village06/mirfguinders006.mp3", 303473158, 262617160)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Where can I find this Sepulcher?", "Option2")
	Dialog.AddOption("I am not interested in the Sepulcher. Farewell.")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn, InSearchoftheSepulcherofJahnda, 1)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("When the temple of Mirf Guinders has a donation of jade golem crystals then I will offer you directions to the Sepulcher of Jahnda.")
	Dialog.AddVoiceover("voiceover/english/mirf_guinders/qey_village06/mirfguinders007.mp3", 1102575551, 1768318615)
    PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddOption("I shall return with your donation.")
	Dialog.Start()
end

function Option3(NPC, Spawn)
    SetStepComplete(Spawn, InSearchoftheSepulcherofJahnda, 3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, yes, the key. Unfortunately the key was swiped from my pack by a wretched being called the Rat Queen, wrangler of rodents. Find her and you find your key. Then you can follow my notes to the Sepulcher of Jahnda.")
	Dialog.AddVoiceover("voiceover/english/mirf_guinders/qey_village06/mirfguinders008.mp3", 2667033451, 2560833588)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddOption("Thank you for your help. Farewell.")
	Dialog.Start()
end

function EstleSearch(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ah, give praises! You have been sent by the gods! I need a hardy crusader, like you, to explore the tunnels of Bristlebane in the Down Below. Find the Shrine of Estle and confirm its existance!")
	Dialog.AddVoiceover("voiceover/english/mirf_guinders/qey_village06/mirfguinders001.mp3", 1245652082, 1122304682)
    PlayFlavor(NPC, "", "", "notworthy", 0, 0, Spawn)
	Dialog.AddOption("Listen, I will help you if you quit preaching.", "DownBelow")
	Dialog.AddOption("I don't want to hear your lunacy. Farewell.")
	Dialog.Start()
end

function DownBelow(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Go to the Down Below! Look for the grand hall graced with three statues of Estle, the Tamer of Wild Souls. After you have found it come back to me! I will reward you with some coin.")
	Dialog.AddVoiceover("voiceover/english/mirf_guinders/qey_village06/mirfguinders002.mp3", 1238322325, 3908688686)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
    if not HasCompletedQuest (Spawn, Estle) and not HasQuest(Spawn, Estle) then 
	Dialog.AddOption("I will find the shrine in the Down Below.", "WillExplore")
    end
	Dialog.AddOption("Would that be Estle Bristlebane?", "WhoIsEstle")
	Dialog.AddOption("I don't want to hear your lunacy. Farewell.")
	Dialog.Start()
end

function WillExplore (NPC, Spawn)
    FaceTarget(NPC, Spawn)
  OfferQuest(NPC, Spawn, Estle)   
 
end

function WhoIsEstle(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What!  Do they teach nothing to young people today?  Estle was an apostle of Rodcet Nife, a Priest of Life.  Together with Vhalen and his bards of Bristlebane, they defended Qeynos during the War Of Plagues!")
	Dialog.AddVoiceover("voiceover/english/mirf_guinders/qey_village06/mirfguinders003.mp3", 706812134, 249250177)
    PlayFlavor(NPC, "", "", "boggle", 0, 0, Spawn)
     if not HasCompletedQuest (Spawn, Estle) and not HasQuest(Spawn, Estle) then 
    Dialog.AddOption("I will find the shrine in the Down Below.", "WillExplore")
    end
    if HasCompletedQuest (Spawn, Estle) or HasQuest(Spawn, Estle) then 
    Dialog.AddOption("Oh, that's right.  Thank you for the reminder.")
    end
    Dialog.AddOption("I don't want to hear your lunacy. Farewell.")
	Dialog.Start()
end


function FoundEstle(NPC, Spawn)
    SetStepComplete(Spawn, Estle, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, thank our mirthful Bristlebane!  The Shrine of Estle has finally been revealed!  Such a place must resonate with the benevolence of the gods.  I must celebrate and venture down there myself to behold its glory with my own eyes!  Here is your coin.")
	Dialog.AddVoiceover("voiceover/english/mirf_guinders/qey_village06/mirfguinders001.mp3", 1245652082, 1122304682)
    PlayFlavor(NPC, "", "", "396", 0, 0, Spawn)
	Dialog.AddOption("Good luck to you.")
	Dialog.Start()
	
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
