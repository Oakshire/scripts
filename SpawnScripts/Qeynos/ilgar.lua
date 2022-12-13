--[[
	Script Name		:	ilgar.lua
	Script Purpose	:	Waypoint Path for ilgar.lua
	Script Author	:	Dorbin 
	Script Date		:	05.16.2022
	Script Notes	:
--]]
require "SpawnScripts/Generic/DialogModule"

local Fairies = 5558
local Quest2 = 5788 --Fighter Quest pt2
dofile("SpawnScripts/Generic/ExpelNonCitizen.lua")
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")

function spawn(NPC)
	waypoints(NPC)
    ProvidesQuest(NPC,Fairies)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end


function InRange(NPC, Spawn)
    NonCitizen(NPC,Spawn)    
end

function hailed(NPC, Spawn)
     if GetFactionAmount(Spawn,11) <0 then
    	FaceTarget(NPC, Spawn)
        choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
   else 
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "","", "no", 0, 0,Spawn)
    Dialog.AddDialog("Move along citizen.  I'm extremely busy.")
	Dialog.AddVoiceover("voiceover/english/knight-lieutenant_ilgar/qey_south/lieutenantilgar.mp3", 1779980030, 2184277232)
    if not HasQuest(Spawn,Fairies) and not HasCompletedQuest(Spawn, Fairies) then
     Dialog.AddOption("Busy you say? I'm available to assist if you need.", "Busy")
    end 
    if GetQuestStep(Spawn, Fairies)==2 then
     Dialog.AddOption("I've reduced the fairy population in the Peat Bog as you asked.", "BusyFinished")
    end
    if HasQuest(Spawn,Quest2) and GetQuestStep(Spawn,Quest2)>=1 and GetQuestStep(Spawn,Quest2)<=3 and not QuestStepIsComplete(Spawn,Quest2,2) then
	Dialog.AddOption("I just wanted to give my thanks for everything the Qeynos Guard does for the city.","FighterQuest")
    end
    Dialog.AddOption("Alright.  As you were.")
	Dialog.Start() 
    end
end

function Busy(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "","", "", 0, 0,Spawn)
	Dialog.AddDialog("It would be a great help if you can.  I need someone to head to the nearby Peat Bog and put a sizable dent in the fairy population.  It seems they have been sneaking into Nettleville and Starcrest and playing pranks on the good folks of the villages.")
    Dialog.AddVoiceover("voiceover/english/lieutenant_ilgar/qey_south/lieutenantilgar000.mp3",1212038397, 2389104068)
	Dialog.AddOption("Sounds fair enough.  Would I be paid for my service?","OfferFairyQuest")
	Dialog.AddOption("Err, I meant I'm 'not' available.  Sorry.")
	Dialog.Start()
end	


function OfferFairyQuest(NPC, Spawn)
    PlayFlavor(NPC, "", "", "salute",0 , 0, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,  Spawn,Fairies)
    end
    
function BusyFinished(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "","", "", 0, 0,Spawn)
	Dialog.AddDialog("Hmm, yes it looks like you did your job.  Reports of the mischeivious fayfolk interfering in the villages have lessened considerably. Here is your payment for a job well done.")
    Dialog.AddVoiceover("voiceover/english/lieutenant_ilgar/qey_south/lieutenantilgar002.mp3",1911360769, 3372915409)
	Dialog.AddOption("Greatful I could be of assistance.", "QuestDone")
	Dialog.Start()
end	

function QuestDone(NPC,Spawn)
            FaceTarget(NPC, Spawn)
            SetStepComplete(Spawn,Fairies, 2)
    PlayFlavor(NPC, "", "", "salute",0 , 0)
    PlayFlavor(Spawn, "", "", "salute",0 , 0)
end

function respawn(NPC)
		spawn(NPC)
	end

function BusyFinished(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "","", "", 0, 0,Spawn)
	Dialog.AddDialog("Hmm, yes it looks like you did your job.  Reports of the mischeivious fayfolk interfering in the villages have lessened considerably. Here is your payment for a job well done.")
    Dialog.AddVoiceover("voiceover/english/lieutenant_ilgar/qey_south/lieutenantilgar002.mp3",1911360769, 3372915409)
	Dialog.AddOption("Greatful I could be of assistance.", "QuestDone")
	Dialog.Start()
end	

function FighterQuest(NPC,Spawn) --NO VO available, but actual text!
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "","", "confused", 0, 0,Spawn)
	Dialog.AddDialog("Really?  Oh.  Well, you know how it is ... you gotta do what you gotta do, you know?  It's not as hard as it looks, all things considered.  I figure I can do my part by keeping an eye out for any gnolls or threats to the city.  Well, hey... thanks for saying something.")
    --Dialog.AddVoiceover("voiceover/english/lieutenant_ilgar/qey_south/lieutenantilgar003.mp3",1911360769, 3372915409)
	Dialog.AddOption("Keep it up!","FighterQuest2")
	Dialog.Start()
end	

function FighterQuest2(NPC,Spawn)
     FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "salute", 0, 0)
    SetStepComplete(Spawn,Quest2,2)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 469.14, -20.96, 194.86, 2, 0)
	MovementLoopAddLocation(NPC, 406.76, -20.87, 145.25, 2, 8)
	MovementLoopAddLocation(NPC, 421.86, -20.93, 168.96, 2, 0)
	MovementLoopAddLocation(NPC, 436.36, -20.26, 209.37, 2, 0)
	MovementLoopAddLocation(NPC, 452.7, -21.95, 242.39, 2, 0)
	MovementLoopAddLocation(NPC, 455.55, -21.92, 244.74, 2, 6)
	MovementLoopAddLocation(NPC, 469.7, -21.06, 196.34, 2, 0)
	MovementLoopAddLocation(NPC, 455.55, -21.92, 244.74, 2, 0)
	MovementLoopAddLocation(NPC, 441.84, -21.92, 263.49, 2, 0)
	MovementLoopAddLocation(NPC, 452.7, -21.95, 242.39, 2, 0)
	MovementLoopAddLocation(NPC, 436.36, -20.26, 209.37, 2, 0)
	MovementLoopAddLocation(NPC, 421.86, -20.93, 168.96, 2, 0)
	MovementLoopAddLocation(NPC, 406.76, -20.87, 145.25, 2, 0)
	MovementLoopAddLocation(NPC, 469.14, -20.96, 194.86, 2, 0)
end


