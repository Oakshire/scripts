--[[
	Script Name	: SpawnScripts/QeynosHarbor/UmliGrayfist.lua
	Script Purpose	: Umli Grayfist <Bartender>
	Script Author	: Dorbin
	Script Date	: 2022.05.20
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
local fish = 5535
local fishy = 5564
require "SpawnScripts/Generic/DialogModule"

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

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "beckon", 0, 0, Spawn)
	Dialog.AddDialog("Have I got a bargain for you!  Come now, step up, I don't bite.  Check my goods and see if we can't make a whale of a deal! Ha ha ha ha ...Whale of a deal, get it?")
	Dialog.AddVoiceover("voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist.mp3", 3286861103, 2387698452)
    if GetQuestStep(Spawn,fish)==1 then
	Dialog.AddOption("I'd say the deal's already been struck, Gretta sent me to fetch her order.", "Dialog2")
    end
    if not QuestStepIsComplete(Spawn,fishy,3)and HasQuest(Spawn,fishy) then
	Dialog.AddOption("Innkeeper Galsway is interested in the best price you can offer on your fish.","FishQuestion")
    end
	Dialog.AddOption("Thank you but I'm not interested right this second, perhaps some other time.")
	Dialog.Start()
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

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh, Gretta, she's a feisty little lass! Did you see her nose? And those eye brows! Yow! Some day she and I will have some mighty fine lookin' little dwarves, but don't go telling her I said so! I'll just put it on her account. There. And here's her fish.")
	Dialog.AddVoiceover("voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist000.mp3", 4224571781, 125811953)
	Dialog.AddOption("I'll make sure she hears about your plans...  by the way, she says you're uglier than a female troll.  I guess that's how dwarves flirt.","Chuckle")
	Dialog.AddOption("Ugh! These smell horrible!  If this is the freshest you've got, then I'll be avoiding Irontoes tonight for sure!","Chuckle")
	Dialog.Start()
end

function Chuckle(NPC,Spawn)
    PlayFlavor(NPC, "", "", "chuckle", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fish, 1)
end   

function FishQuestion(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "", "", "ponder", 0, 0, Spawn)
	Dialog.AddDialog("My best price, eh?  So the old grubber is shopping for a deal.  Hmm, he does run a big place...  and I really need to sell this stock!  Okay, you tell Galsway I'll give him a five percent break-  but the deal's off if he tells anyone how generous I am!")
	Dialog.AddVoiceover("voiceover/english/merchant_umli_grayfist/qey_harbor/umligrayfist001.mp3", 4032126743, 224777324)
	Dialog.AddOption("Fair enough.  I'll let him know about your offer.  Thanks!", "ThankYou")
	Dialog.Start()
end

function ThankYou(NPC,Spawn)
    PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
 	FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn,fishy, 3)
end 