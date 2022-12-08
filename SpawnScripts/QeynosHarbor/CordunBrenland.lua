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
	Dialog.AddDialog("No one in this world can you trust.  Not men, not women, not beasts.  But steel ... Steel, now steel you can trust.")
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1002.mp3", "", "frustrated", 0, 0, Spawn)
    if  GetQuestStep(Spawn,5585)== 4 then 
    Dialog.AddOption("I've returned with the catch.", "FishDelivery")
    end
    if not HasCompletedQuest(Spawn,5585) and not HasQuest(Spawn,5585) then
    Dialog.AddOption("You can trust me.", "Fish1")
    end
    Dialog.AddOption("Don't you think the city of Qeynos can be trusted?", "Coin1")
    Dialog.AddOption("I'll leave you to it then.")
	Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

function Coin1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
	Dialog.AddDialog("I don't trust anything other than steel.  The Circle of Five may claim to look out for the best interests of the people, but I have my doubts.  If we can trust them, why do they only let you work for one of them?")
    Dialog.AddOption( "They have their good reasons for doing so.  Good luck with your steel.", "")
    Dialog.AddOption( "Have you considered Freeport?  I've heard its people only report to the Overlord.", "Coin2")
	Dialog.Start()
end


function Coin2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "no", 0, 0, Spawn)
	Dialog.AddDialog("No, but me and my partner are sailing there soon.  We're sick of this pathetic city.  All we have to do is pull off one last job, then we're off to Freeport, the land of opportunity! What kind of person are you, eh?  Do you want to join us and leave this stupid city behind?  Think of it ...  all the gold you want...")
    Dialog.AddOption( "Freeport is a corrupt city of oppression and pain!  I will never betray Qeynos!", "Bah")
    Dialog.AddOption( "I want what I deserve.  I will gladly be evil to gain that.  I'll join you and go to Freeport!", "Betray")
	Dialog.Start()
end

function Bah(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Bah!  Off with you then or you'll find how much I trust my steel.", "shakefist", 0, 0, Spawn)
end

function Betray(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddDialog("Well now, perhaps you could be of use to us.  I'm putting together a job, but it isn't quite ready yet.  Return to me later and we'll see what we can accomplish together.")
    Dialog.AddOption( "[Classic Betrayal Quest a Work in Progress]", "")
    Dialog.AddOption( "I await patiently", "")
	Dialog.Start()
end

function Fish1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
	Dialog.AddDialog("And just what have you done for me, huh? Nothing!  If you want me to trust you, then do something for me.")
    Dialog.AddOption( "What would you like me to do?", "FishQuest")
    Dialog.AddOption( "Fine.  I don't have time for this anyways.")
	Dialog.Start()
end

function FishQuest(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("All right then!  Go to Antonica and fetch me two barracuda, one manta ray, and two sea turtles.  Once you've done me a bit of good, then perhaps I can trust you.")
    Dialog.AddOption( "I'm ok with that.", "QuestStart")
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
	Dialog.AddDialog("That you have!  And it will make for a fine stew, a fine stew indeed.")
    Dialog.AddOption( "So when do we eat?", "FishDelivery2")
	Dialog.Start()
end

function FishDelivery2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
	Dialog.AddDialog("HA!  You thought I was going to share this feast with you?  HA!  I've dinner plans that don't include you.  Don't feel bad though ... you did a great deed.  Why don't you stop by another day, and we'll speak then.  For now, take this coin.")
    Dialog.AddOption( "Thanks for the coin.", "QuestDone")
	Dialog.Start()
    SetStepComplete(Spawn,5585, 4)
    end  

 --But while peace with Qeynos may serve my purposes for the moment, never let your guard falter. This shattered world needs strength, not mercy. And until there is but one nation on Norrath, we must always be prepared to strike against the weak.