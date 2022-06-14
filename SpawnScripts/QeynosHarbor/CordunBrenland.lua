--[[
    Script Name    : SpawnScripts/QeynosHarbor/CordunBrenland.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.13 05:06:36
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
ProvidesQuest(NPC,5585)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("[The following is fabricated.  Let EmemJR know on EMU Discord that this NPC needs dialog]")
	Dialog.AddOption("[Proceed]","Dialog1")
	Dialog.Start()
end

function Dialog1(NPC, Spawn)
 FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I can't take much more of this place.  All this 'goody' talk about gold in the streets is enough to drive me mad.  Bah!  I know there is more coin to be had out there if we weren't lining the pockets of the 'Queen'.")
	PlayFlavor(NPC, "", "", "frustrated", 0, 0, Spawn)
    if  GetQuestStep(Spawn,5585)== 2 then 
    Dialog.AddOption("Here are the ingredients you asked for.  Fresh from Antonica.", "FishDelivery")
    end
    if not HasCompletedQuest(Spawn,5585) and not HasQuest(Spawn,5585) then
    Dialog.AddOption("...Are you heading to Freeport, then?", "Coin")
    end
	Dialog.AddOption("I'll leave you to it then.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

function Coin(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("No, but me and my partner are sailing there soon.  We're sick of this pathetic city.  All we have to do is pull off one last job, then we're off to Freeport, the land of opportunity! What kind of person are you, eh?  Do you want to join us and leave this stupid city behind?  Think of it ...  all the gold you want...")
    Dialog.AddOption( "Freeport is a corrupt city of oppression and pain!  I will never betray Qeynos!", "FishQuest")
    Dialog.AddOption( "I want what I deserve.  I will gladly be evil to gain that.  I'll join you and go to Freeport!", "Betray")
	Dialog.Start()
end

function Betray(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Now that's the spirit!  Say... give me some time and I may have something for you to do in the future!")
    Dialog.AddOption( "I'll let EmemJR know on Discord that you need the dialog.")
    Dialog.AddOption( "I await patiently.")
	Dialog.Start()
end

function FishQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Eh, I hear ya then...  Hmm, if you're looking for a few coins- it has been ages since I've been able to have one of my favorite dishes they don't serve in the city.  Perhaps you could do some good and fetch some sea creatures out of the waters in Antonica for me.  I'll give you a few coins to rub together if that works for ya.")
    Dialog.AddOption( "That sounds reasonable. Sure.", "QuestStart")
    Dialog.AddOption( "I don't like how any of this conversation smells.  Goodbye.")
	Dialog.Start()
end

function QuestStart(NPC,Spawn)
	FaceTarget(NPC, Spawn)    
    OfferQuest(NPC,Spawn, 5585)
end

function FishDelivery(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, that's right.  I gave you a task.  Took your sweet time, didn' chya?  These still look fresh enough... Certainly enough for me!  You didn't think you'd be getting any of this stew, did ya?  Afraid you're out of luck, take these coins and leave me.  I've got a stew to cook up.")
    Dialog.AddOption( "Well, fine then.", "QuestDone")
	Dialog.Start()
end

function QuestDone(NPC, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,5585, 4)
    end  