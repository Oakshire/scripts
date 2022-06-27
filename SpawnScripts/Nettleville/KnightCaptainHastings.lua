--[[
    Script Name    : SpawnScripts/Nettleville/KnightCaptainHastings.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 01:06:53
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Delivery = 5596
local FPStout = 5595

function spawn(NPC)
	waypoints(NPC)
    ProvidesQuest(NPC,Delivery)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    MovementLoopAddLocation(NPC, 660.35, -20.39, 270.5, 2, 25)
	MovementLoopAddLocation(NPC, 660.75, -20.34, 273.54, 2, 0)
	MovementLoopAddLocation(NPC, 664.72, -20.21, 284.51, 2, 0)
	MovementLoopAddLocation(NPC, 667.53, -19.95, 293.1, 2, 0)
	MovementLoopAddLocation(NPC, 674.78, -20.14, 296.04, 2, 25)
	MovementLoopAddLocation(NPC, 672.68, -20.12, 296.97, 2, 0)
	MovementLoopAddLocation(NPC, 669.51, -20.18, 299.32, 2, 0)
	MovementLoopAddLocation(NPC, 662.97, -20.44, 318.56, 2, 25)
	MovementLoopAddLocation(NPC, 664.84, -20.44, 317.66, 2, 0)
	MovementLoopAddLocation(NPC, 663.91, -20.43, 308.87, 2, 0)
	MovementLoopAddLocation(NPC, 665.98, -20.22, 298.33, 2, 0)
	
    MovementLoopAddLocation(NPC, 648.47, -20.46, 297.16, 2, 0)
	MovementLoopAddLocation(NPC, 641.88, -20.59, 300.29, 2, 0)
	MovementLoopAddLocation(NPC, 636.4, -20.67, 302.89, 2, 0)
	MovementLoopAddLocation(NPC, 629.07, -20.62, 307.18, 2, 0)
	MovementLoopAddLocation(NPC, 623.98, -20.53, 310.56, 2, 0)
	MovementLoopAddLocation(NPC, 612.92, -20.6, 322.49, 2, 0)
	MovementLoopAddLocation(NPC, 612.92, -20.6, 322.49, 2, 0)
	MovementLoopAddLocation(NPC, 605.71, -20.66, 334.49, 2, 0)
	MovementLoopAddLocation(NPC, 601.62, -20.76, 343.68, 2, 1)
	MovementLoopAddLocation(NPC, 601.62, -20.76, 343.68, 2, 25)
	MovementLoopAddLocation(NPC, 602.79, -20.81, 345.99, 2, 0)
	MovementLoopAddLocation(NPC, 604.14, -20.78, 338.99, 2, 0)
	MovementLoopAddLocation(NPC, 606.87, -20.69, 329.69, 2, 0)
	MovementLoopAddLocation(NPC, 613.54, -20.57, 320.71, 2, 0)
	MovementLoopAddLocation(NPC, 620.37, -20.49, 312.91, 2, 0)
	MovementLoopAddLocation(NPC, 633.33, -20.72, 304.47, 2, 0)
	MovementLoopAddLocation(NPC, 633.33, -20.72, 304.47, 2, 0)
	MovementLoopAddLocation(NPC, 633.33, -20.72, 304.47, 2, 0)
	MovementLoopAddLocation(NPC, 640.32, -20.64, 300.67, 2, 0)
	MovementLoopAddLocation(NPC, 648.12, -20.47, 297.01, 2, 0)
	MovementLoopAddLocation(NPC, 649.85, -20.43, 296.58, 2, 0)
	MovementLoopAddLocation(NPC, 655.82, -20.42, 298.78, 2, 0)
	
	
	MovementLoopAddLocation(NPC, 666.53, -19.98, 292.88, 2, 0)
	MovementLoopAddLocation(NPC, 664.47, -20.25, 283.14, 2, 0)
end



function hailed(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
 	FaceTarget(NPC, Spawn)
 	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings resident!  No time to chat. I'm in charge of the local Qeynos Guard squad.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_hastings/qey_village01/captainhastings000.mp3", 2830541890, 1668350468)
 	if not HasCompletedQuest (Spawn, Delivery) and not HasQuest (Spawn, Delivery) then 
        Dialog.AddOption("I would love the opportunity to help the Qeynos Guard if there is anything that needs doing.", "Helping")
    end
    if GetQuestStep (Spawn, Delivery)==2 then 
        Dialog.AddOption("I've returned with Captain Santis' response.","Delivered")
    end
    if GetQuestStep (Spawn, FPStout)==2 then 
        Dialog.AddOption("...I have something that may be of interest to you.","FPStoutTurnin")
    end
    if HasCompletedQuest (Spawn, Delivery) then 
        Dialog.AddOption("Keep up the good work!")
    end
    Dialog.AddOption("Sorry. Don't let me get in your way.")
	Dialog.Start()
end
end


function Helping(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("I admire your dedication to the kingdom.  I have for you a task that will contribute to Qeynos greatness.  Does this interest you?")
	Dialog.AddVoiceover("voiceover/english/knight-captain_hastings/qey_village01/captainhastings003.mp3", 3672561491, 3095253551)
	Dialog.AddOption("I would be happy to serve!  Tell me what I must do!", "QuestBegin")
	Dialog.AddOption("On second thought, I am needed elsewhere.")
	Dialog.Start()
end


function QuestBegin (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Delivery)
end


function Delivered(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 2)
	PlayFlavor(NPC, "", "", "happy", 0, 0, Spawn)
	Dialog.AddDialog("Excellent!  We will crush his team and earn the rights to the royal bunkhouse!  You are free to go, citizen.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_hastings/qey_village01/captainhastings005.mp3", 3310150005, 1305294330)
	Dialog.AddOption("")
	Dialog.AddOption("Glad I could help!")
	Dialog.Start()
end

function FPStoutTurnin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Interesting.  What is this... something?")
	Dialog.AddVoiceover("voiceover/english/knight-captain_hastings/qey_village01/captainhastings001.mp3", 1036957677, 3879964827)
	Dialog.AddOption("I was given this case of Freeport contraband and thought it should be turned into the authorities.", "FPStoutUpdate")
	Dialog.AddOption("On second thought, I am needed elsewhere.")
	Dialog.Start()
end

function FPStoutUpdate(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
    SetStepComplete(Spawn, FPStout, 2)
 	SendMessage(Spawn, "Captain Hastings hands you a medium sized bag as a token of thanks for your service to Qeynos.")	
    SummonItem(Spawn,20749,1)   --Summons player a medium bag
    Dialog.AddDialog("You did the right thing.  Thank you for bringing this to me.")
	Dialog.AddVoiceover("voiceover/english/knight-captain_hastings/qey_village01/captainhastings002.mp3", 1532795209, 281346736)
	Dialog.AddOption("I'm glad to have it off my hands.")
	Dialog.Start()
end