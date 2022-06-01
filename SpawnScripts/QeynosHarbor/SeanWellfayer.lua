--[[
	Script Name	: SpawnScripts/QeynosHarbor/SeanWellfayer.lua
	Script Purpose	: Sean Wellfayer 
	Script Author	: Dorbin
	Script Date	: 2022.05.31
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

	PlayFlavor(NPC, "voiceover/english/sean_wellfayer/qey_harbor/100_qst_sean_wellfayer_multhail2_e78a363.mp3", "If fishing doesn't interest you, perhaps bait does!", "", 3207653573, 2859825628, Spawn)
end

local bait = 5571
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
    ProvidesQuest(NPC,bait)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
 if math.random(1,100) <70 then
 if GetFactionAmount(Spawn,11) <0 then
    if not HasQuest(Spawn,bait) and not HasCompletedQuest(Spawn,bait) then
    choice = math.random(1,3)
	    if choice == 1 then
	    PlayFlavor(NPC, "voiceover/english/sean_wellfayer/qey_harbor/100_qst_sean_wellfayer_multhail1_5dca659c.mp3", "I don't think fishing interests you.  Perhaps you should be on your way!", "", 1997164956, 747011072, Spawn)
	    elseif choice == 2 then
	    PlayFlavor(NPC, "voiceover/english/sean_wellfayer/qey_harbor/100_qst_sean_wellfayer_multhail2_e78a363.mp3", "If fishing doesn't interest you, perhaps bait does!", "", 3207653573, 2859825628, Spawn)
	    elseif choice == 3 then
	    PlayFlavor(NPC, "voiceover/english/sean_wellfayer/qey_harbor/100_qst_sean_wellfayer_callout1_cf7b6fda.mp3", "Please, try your luck!  I've been fishing here since I was a small boy, and I still have great luck hooking fish!", "", 3608210997, 2386511275, Spawn)
        end
    end
    end
end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
 if GetFactionAmount(Spawn,11) <0 then
    choice = math.random(1,2)
	    if choice == 1 then
		PlayFlavor(NPC, "", "", "shakefist", 2088886924, 3736631596, Spawn)
	    elseif choice == 2 then
		PlayFlavor(NPC, "", "", "glare", 1584866727, 581589457, Spawn)
        end
    else
    Dialog1(NPC,Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Please try your luck!  I've been fishing here since I was a small boy, and I still have great luck hooking fish!")
	Dialog.AddVoiceover("voiceover/english/sean_wellfayer/qey_harbor/seanwellfayer000.mp3", 2006211281, 54196600)
    if not HasQuest(Spawn,snakes) then
	Dialog.AddOption("How are the fish biting today?", "Dialog2")
    end
    if GetQuestStep(Spawn,snakes)==2 then
	Dialog.AddOption("I've brought the fairy wings and slug meat you were looking for.", "Dialog3")
    end
    Dialog.AddOption("Not interested right now.  Good luck on your next catch.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I would be catching more fish if I had my special bait.  I ran out not long ago and haven't had the time to gather more!  You see all these others fishing here on the harbor?  They are eyeing this spot, my spot!  If you had some time, could you gather bait for me?")
    PlayFlavor(NPC,"","","sigh",0,0,Spawn)
	Dialog.AddOption("If you are willing to pay for it.  I'd be happy to.","Job")
	Dialog.AddOption("Not interested.  Good luck out here.")
	Dialog.Start()
end

function Job(NPC,Spawn)
    FaceTarget(NPC,Spawn)
    OfferQuest(NPC,  Spawn,bait)
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddVoiceover("voiceover/english/sean_wellfayer/qey_harbor/seanwellfayer002.mp3", 3480104575, 2347373334)
	Dialog.AddDialog("Good job, my friend!  Now I've got pleanty of bait and I didn't even have to leave my lucky fishing spot.  Please, let me pay you for your effots.")
    PlayFlavor(NPC,"","","thanks",0,0,Spawn)
	Dialog.AddOption("Glad to have helped.","JobDone")
	Dialog.Start()
end

function JobDone(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,bait, 2)
    end