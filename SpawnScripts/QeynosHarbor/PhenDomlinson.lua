--[[
	Script Name	: SpawnScripts/QeynosHarbor/PhenDomlinson.lua
	Script Purpose	: Phen Domlinson <Bowyer>
	Script Author	: Dorbin
	Script Date	: 2022.05.25
	Script Notes	: 
--]]

require "SpawnScripts/Generic/DialogModule"
local fishy = 5564

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
   if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "glare", 1584866727, 581589457, Spawn)
        end
    else
    if math.random(1,100)<60 then
    choice = math.random(1,2)
	FaceTarget(NPC, Spawn)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "bye", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "hello", 1584866727, 581589457, Spawn)
        end
        end
    end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "heckno", 1584866727, 581589457, Spawn)
        end
    else
    Dialog1(NPC, Spawn)
    end
end	

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
	Dialog.AddDialog("Fresh supplies every week! Step up and see for yourself.")
	Dialog.AddVoiceover("voiceover/english/merchant_phen_domlinson/qey_harbor/phendominlson000.mp3", 3656550620, 1100622613)
	if not QuestStepIsComplete(Spawn,fishy,4) and HasQuest(Spawn,fishy) then
	Dialog.AddOption("I'm working for Galsway to find the best price on fish here at the harbor.  Think you can make an offer?","FishQuestion")
    end
    Dialog.AddOption("Every week? That's not fresh. No thanks.")
	Dialog.Start()
end

function FishQuestion(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("I won't haggle with a go-between.  Tell Galsway the cost stays the same.")
	Dialog.AddVoiceover("voiceover/english/merchant_phen_domlinson/qey_harbor/phendominlson001.mp3", 447644690, 3871643004)
	Dialog.AddOption("Well that's too bad.  Good day to you then.","FishDone")
	Dialog.AddOption("Most likely for the best.  Your stall smells a week past it's prime.","FishDone2")
	Dialog.Start()
end

function FishDone(NPC,Spawn)
    PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fishy, 4)
end 

function FishDone2(NPC,Spawn)
    PlayFlavor(NPC, "", "", "rude", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fishy, 4)
end 
