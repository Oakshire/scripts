--[[
	Script Name	: SpawnScripts/Castleview/Bleemeb.lua
	Script Purpose	: Bleemeb <Spell Scrolls>
	Script Author	: Dorbin
	Script Date	: 2022.01.29
	Script Notes	:
--]]
require "SpawnScripts/Generic/DialogModule"

local Book = 5468
local Leaves = 5467
local Delivery = 5500


function spawn(NPC)
SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
ProvidesQuest(NPC, Book)
ProvidesQuest(NPC, Leaves)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
if MakeRandomInt(1, 100) <= 60 then
    if not HasCompletedQuest (Spawn, Book) and not HasCompletedQuest (Spawn, Leaves) then
        choice = MakeRandomInt(1,2)
        FaceTarget(NPC, Spawn)
        if choice ==1 then
        PlayFlavor(NPC, "", "","hello", 0, 0, Spawn)
    	elseif choice ==2 then
        PlayFlavor(NPC, "", "","wave", 0, 0, Spawn)
        end
    elseif  HasCompletedQuest (Spawn, Book) and HasCompletedQuest (Spawn, Leaves) then
		PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
        end
    end
end




function hailed(NPC, Spawn)
        if GetFactionAmount(Spawn,11) <0 then
        FactionChecking(NPC, Spawn, faction)
        else  
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("If thou art interested in items of a scholarly nature, thou should take a look around... just don't disturb Yanari; she is busy with her research.")
	Dialog.AddVoiceover("voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb000.mp3", 4182629486, 2797643210)
	PlayFlavor(NPC, "", "", "nod", 0, 0, Spawn)
 
    	   if GetQuestStep(Spawn, Delivery)==1 then
	           Dialog.AddOption("I'm returning a book from Barry Viceheart.", "DeliveryReturn")
	        end
            if not HasQuest(Spawn, Book) then       
                Dialog.AddOption("I'm not from around here. Anything I should know?", "BookStart")
            end
            if not HasQuest(Spawn, Leaves) and GetLevel(Spawn)>=7 then       
                Dialog.AddOption("What is Yanari doing?", "LeavesStart")
            end
	         if GetQuestStep(Spawn, Book)==3 then
	           Dialog.AddOption("Here is the book you wanted me to find. It was stored on the shelves at the inn.", "DoneBook")
	        end
	       if GetQuestStep(Spawn, Leaves)==2 then
	           Dialog.AddOption("I've brought back the leaves for Yanari.", "DoneLeaves")
	        end
        Dialog.AddOption("I'm just browsing. Thank you.")	
        Dialog.Start()
	        end
end


 function LeavesStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Currently, she is trying to make her spells more potent. But soon, she will't be working on a spell to help the druids of the Elddar Grove grow their precious trees.")
	Dialog.AddVoiceover("voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb001.mp3",813139380,2873385292)
 	PlayFlavor(NPC, "", "", "sniff", 0,0 , Spawn)
    Dialog.AddOption("That sounds impressive!", "QuestBegin2")
    Dialog.AddOption( "I'm busy. Sorry.")
    Dialog.Start()
end   

 function DoneLeaves(NPC, Spawn)
    SetStepComplete(Spawn, Leaves, 2)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("By the valor of Marr! 'Tis quite a bundle of them thou hast. I am sure they wilt do nicely for her.  I'm in the habit of paying for services ... so please, take these coins.  FroooOOOooaak!")
	Dialog.AddVoiceover("voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb003.mp3",2698466863,3996998508)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("Thank you scribe.")
    Dialog.Start()
end   

 function BookStart(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Ahh, a newcomer! 'Tis grand to meet thee! I have a bit a bit of a task for thou. A resident named Faeadaen hath not returned our Book of Arobos. Privy, could'st thou retrive it from her?")
	Dialog.AddVoiceover("voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb005.mp3",360212567,1854076529)
 	PlayFlavor(NPC, "", "", "bow", 0,0 , Spawn)
    Dialog.AddOption("Certainly, I will go get the book.", "QuestBegin1")
    Dialog.AddOption( "I can't right now. I appologize.")
    Dialog.Start()
end   


 function DoneBook(NPC, Spawn)
    SetStepComplete(Spawn, Book, 3)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Many thanks unto thee! Here is a bit of coin. Spend it wisely!")
	Dialog.AddVoiceover("voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb006.mp3",381115316,3913092257)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("I appreciate it.")
    Dialog.Start()
end   

 function DeliveryReturn(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Finally! 'Twould hath hated to send the Qeynos guard after him! Be sure's to tell him that his buisness is no longer allowed in this shop.")
	Dialog.AddVoiceover("voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb004.mp3",4110253514,1354021803)
 	PlayFlavor(NPC, "", "", "thanks", 0,0 , Spawn)
    Dialog.AddOption("I will let Viceheart know.", "DeliveryDone")
    Dialog.Start()
end   

function QuestBegin1 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Book)
end

function QuestBegin2 (NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Leaves)
end

function DeliveryDone(NPC, Spawn)
    SetStepComplete(Spawn, Delivery, 1)
end
