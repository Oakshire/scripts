--[[
    Script Name    : SpawnScripts/Starcrest/PhilosopherOrrinalanya.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.28 04:06:45
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/UnknownLanguage.lua")
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
	waypoints(NPC)
ProvidesQuest(NPC,247)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
else
    if not HasCompletedQuest(Spawn, 247)then
if math.random(1, 100) <= 80 then
        choice = math.random(1,3)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
		PlayFlavor(NPC, "voiceover/english/philosopher_orrinalanya/qey_village02/100_philosopher_urrinalanya_multhail4_68bb913c.mp3", "I suppose I should meet him for that debate... it does seem like an interesting topic...", "ponder", 415488076, 395918302, Spawn, 4)
    	elseif choice ==2 then
		PlayFlavor(NPC, "voiceover/english/philosopher_orrinalanya/qey_village02/100_philosopher_urrinalanya_callout_f7da3eeb.mp3", "Hmm ... you don't seem the philosophizing type ... good day and farewell.", "sniff", 3739495894, 1743566335, Spawn, 4)
    	elseif choice ==3 then
        PlayFlavor(NPC, "voiceover/english/philosopher_orrinalanya/qey_village02/100_philosopher_urrinalanya_orrin_intro_ee0886dd.mp3", "Have the gods of influence forsaken us, or have we turned from them?  Do we not want to see them, or are they not here to be seen?  Care to join me in this enlightened debate, friend?", "orate", 2698585009, 3547905149, Spawn,4)
        end
    end
end
end
end


function hailed(NPC, Spawn)
 FaceTarget(NPC,Spawn) 
 if GetFactionAmount(Spawn,11)<0 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
    else    
    if not HasLanguage(Spawn,4)then
    Garbled(NPC,Spawn)
    PlayFlavor(NPC,"","","noway",0,0,Spawn)
    else
    Dialog1 (NPC,Spawn)
    end
end
end



function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "orate", 0, 0, Spawn)
	Dialog.AddDialog("Have the gods of influence forsaken us?  Or have we ourselves turned from them?  Do we not want to see them, or are they not here to be seen?")
	Dialog.AddVoiceover("voiceover/english/philosopher_orrinalanya/qey_village02/philosopherorrinalanya.mp3", 2178958737, 1415446310)
    if not HasQuest(Spawn, 247) and not HasCompletedQuest(Spawn, 247) then       
	Dialog.AddOption("What are you talking about?  Haven't the god been abscent since The Shattering?","Dialog2")
    end
    Dialog.AddOption("I'll leave you to your reflections.  Good day.")
	Dialog.Start()
end


function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("The art of philosophy is not one of hard facts, but rather how you perceive what is before you.  However, I can tell you're not interested in this enlightening conversation.  If you've no more pressing matters than interrupting my thoughts, perhaps you wouldn't mind delivering a note for me.")
	Dialog.AddVoiceover("voiceover/english/philosopher_orrinalanya/qey_village02/philosopherorrinalanya000.mp3", 849141617,1802066306)
	Dialog.AddOption("I certainly can.", "QuestStart")
	Dialog.AddOption("Believe it or not, I do have pressing matters.  Good day.")
	Dialog.Start()
end

function QuestStart (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, 247)
end

function FaceFount1(NPC)
	SpawnSet(NPC, "heading", "6")
end	
function FaceFount2(NPC)
	SpawnSet(NPC, "heading", "139")
end	
function FaceFount3(NPC)
	SpawnSet(NPC, "heading", "318")
end	
function FaceFount4(NPC)
	SpawnSet(NPC, "heading", "281")
end	

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 1,"FaceFount1")
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 0)
	MovementLoopAddLocation(NPC, 776, -20.52, 287.26, 2, 0)
	MovementLoopAddLocation(NPC, 778.56, -20.57, 281.87, 2, 0)
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 0)
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 0)
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 1,"FaceFount2")
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 55,"Action")
	MovementLoopAddLocation(NPC, 782.1, -20.25, 272.07, 2, 0)
	MovementLoopAddLocation(NPC, 781.3, -20.51, 275.65, 2, 0)
	MovementLoopAddLocation(NPC, 777.91, -20.6, 283.44, 2, 0)
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 1,"FaceFount1")
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 771.5, -20.41, 289.13, 2, 0)
	MovementLoopAddLocation(NPC, 765.24, -20.48, 286.85, 2, 0)
	MovementLoopAddLocation(NPC, 765.24, -20.48, 286.85, 2, 0)
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 1,"FaceFount3")
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 0)
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 0)
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 1,"FaceFount4")
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 33,"Action")
	MovementLoopAddLocation(NPC, 763.39, -20.51, 281.6, 2, 0)
	MovementLoopAddLocation(NPC, 765.25, -20.49, 285.44, 2, 0)
end

function Action(NPC)
    local choice = MakeRandomInt(1, 4)
    if choice == 1 then
        PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
    elseif choice == 2 then
        PlayFlavor(NPC, "", "", "agree", 0, 0, Spawn)
    elseif choice == 3 then
        PlayFlavor(NPC, "", "", "sniff", 0, 0, Spawn)
    elseif choice == 4 then
        PlayFlavor(NPC, "", "", "tapfoot", 0, 0, Spawn)
    end
end   



