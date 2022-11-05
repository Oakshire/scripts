--[[
    Script Name    : SpawnScripts/Baubbleshire/Leon.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.20 06:07:01
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
local CalloutTimer = false

function spawn(NPC)
ProvidesQuest(NPC,5760)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn) --Quest Callout
if GetFactionAmount(Spawn,11)<0 then
PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
FaceTarget(NPC, Spawn)
elseif GetRace(Spawn)== 7 or GetRace(Spawn)== 5 then
    if not HasQuest(Spawn,5760) and not HasCompletedQuest(Spawn, 5760)then   
    Talk(NPC,Spawn)
    elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
elseif CalloutTimer == false then
    CalloutTimer = true
    AddTimer(NPC,90000,"ResetCallout",1,Spawn)
    Talk(NPC,Spawn)
    end
end



function ResetCallout(NPC,Spawn)
    CalloutTimer = false
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11)<0 then
        PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
    else        
if GetRace(Spawn)== 7 or GetRace(Spawn)== 5 then
    if not HasQuest(Spawn,5760) and not HasCompletedQuest(Spawn, 5760)then
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Greetings, friend!  I was just saying to myself, \"Leon, I bet that person is a refugee and needs your help.\" I was right, wasn't I? Well, if you need help then you came to the right place. Welcome to Qeynos!")
	Dialog.AddVoiceover("voiceover/english/steward_leon/qey_village06/steward_leon001.mp3", 2019816460, 2210116223)
    PlayFlavor(NPC,"","","hello",0,0,Spawn)
	Dialog.AddOption("It feel good to have land under my feet again!","Dialog1")
	Dialog.AddOption("I'll have to continue this conversation a bit later.")
	Dialog.Start()
    else
    Talk(NPC,Spawn)
    end
else    
    Talk(NPC,Spawn)
    end
end
end

function Talk(NPC,Spawn)
        FaceTarget(NPC, Spawn)
        local choice = MakeRandomInt(1,2)
	    if choice == 1 then
        PlayFlavor(NPC,"voiceover/english/steward_leon/qey_village06/qst_steward_leon_callout1_454cfdb9.mp3","This day would be perfect if, only I had a cool mug of jum-jum.  Oh well.","agree",251868759,1191048205,Spawn)
        elseif choice == 2 then
        PlayFlavor(NPC,"voiceover/english/steward_leon/qey_village06/qst_steward_leon_hail1_374c1914.mp3","This would be a perfect day if I had a cool mug of jum-jum. Mmmmm ... Mmmm ... I must get some jum-jum! Sorry, friend. I can't talk now!","smile",3110431219,3470484865,Spawn)
        end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You must be hungry after all that sailing! I'm not big on boats, but I enjoy a day of fishing in the stream. Maybe once you settle in your new home, we can go fishing!")
    PlayFlavor(NPC,"","","happy",0,0,Spawn)
	Dialog.AddVoiceover("voiceover/english/steward_leon/qey_village06/steward_leon002.mp3", 3870008378, 3262627233)
	Dialog.AddOption("Wait, I get my own home here?", "Dialog2")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("We would never leave you without a place to sleep! You have a home as long as you are in Baubbleshire. That Queen sure has a big heart, doesn't she? I'm not one for royalty, but I can't imagine anyone else as our queen!")
	Dialog.AddVoiceover("voiceover/english/steward_leon/qey_village06/steward_leon003.mp3", 2443307894, 340001901)
    PlayFlavor(NPC,"","","no",0,0,Spawn)
	Dialog.AddOption("Wow, The Baubbleshire?", "QuestStart")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,5760)
end