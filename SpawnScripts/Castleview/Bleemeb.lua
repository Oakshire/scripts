--[[
	Script Name	: SpawnScripts/Castleview/Bleemeb.lua
	Script Purpose	: Bleemeb <Spell Scrolls>
	Script Author	: Dorbin
	Script Date	: 2022.01.29
	Script Notes	:
--]]

    -- Fetch quest dialog needs to be built
   -- PlayFlavor(NPC, "voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb004.mp3", "Finally! T'would have hated to send the Qeynos guard after him. Be sure'st to tell him that his buisness is no longer allowed in this shop.", "thank", 4110253514, 1354021803, Spawn)


local Book = 5468
local Leaves = 5467
local Delivery = 5500


function spawn(NPC)
SetPlayerProximityFunction(NPC, 6, "InRange", "LeaveRange")
ProvidesQuest(NPC, Book)
ProvidesQuest(NPC, Leaves)
end

function respawn(NPC)
	spawn(NPC)
end


function InRange(NPC, Spawn) --Quest Callout
if math.random(1, 100) <= 60 then
    if not HasCompletedQuest (Spawn, Book) and not HasCompletedQuest (Spawn, Leaves) then
        choice = math.random(1,2)
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
	FaceTarget(NPC, Spawn)
    conversation = CreateConversation()   
    
    	   if GetQuestStep(Spawn, Delivery)==1 then
	           AddConversationOption(conversation, "I'm returning a book from Barry Viceheart.", "DeliveryReturn")
	        end
            if not HasQuest(Spawn, Book) then       
                AddConversationOption(conversation, "I'm not from around here. Anything I should know?", "BookStart")
            end
            if not HasQuest(Spawn, Leaves) then       
                AddConversationOption(conversation, "What is Yanari doing?", "LeavesStart")
            end
	         if GetQuestStep(Spawn, Book)==4 then
	           AddConversationOption(conversation, "Here is the book you wanted me to find. It was stored on the shelves at the inn.", "DoneBook")
	        end
	       if GetQuestStep(Spawn, Leaves)==2 then
	           AddConversationOption(conversation, "I've returned with the Eldarr leaves you asked for.", "DoneLeaves")
	        end

	  AddConversationOption(conversation, "I'm just browsing. Thank you.")
	 StartConversation(conversation, NPC, Spawn, "If thou art interested... of items of a scholarly nature. Thou should take a look around. Just don't disturb Yanari! She is busy with her research.")
    PlayFlavor(NPC, "voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb000.mp3", "", "", 4182629486, 2797643210, Spawn)
	        end



 function LeavesStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "That sounds impressive!", "LeavesStart2")
    AddConversationOption(conversation, "I'm busy. Sorry.")
    PlayFlavor(NPC, "voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb001.mp3","","happy",813139380,2873385292,Spawn)
    StartConversation(conversation, NPC, Spawn, "Currently, she is trying to make her spells more potent. But soon, she will't be working on a spell to help the druids of the Elddar Grove help grow their precious trees.")
end   

 function LeavesStart2(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'll go gather the leaves at the Eldarr Grove.", "QuestBegin2")
    AddConversationOption(conversation, "Leaves? I don't have time for this.")
    PlayFlavor(NPC, "voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb002.mp3","","agree",1766321211,1856541681,Spawn)
    StartConversation(conversation, NPC, Spawn, "It is, it is! FrroOAK! She needs someone to fetch some leaves from the base of the tallest Eldarr tree. Say! I figured thou would'st do nicely for that. Why doth thou head over to the Eldarr grove and pick her up some leaves. Thou'st can't miss the tree! It has elves in it.")
end   

 function DoneLeaves(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thank you.", "RewardLeaves")
    PlayFlavor(NPC, "voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb002.mp3","","thank",2698466863,3996998508,Spawn)
    StartConversation(conversation, NPC, Spawn, "By the valor of Marr! Tis quite a bundle of them thou has. I am sure they will do nicely for her. I'm in the habbit of paying for services, so please take these coins. frooAK!")
end   

 function BookStart(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Certainly, I will go get the book.", "QuestBegin1")
    AddConversationOption(conversation, "I can't right now. I appologize.")
    PlayFlavor(NPC, "voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb005.mp3","","bow",360212567,1854076529,Spawn)
    StartConversation(conversation, NPC, Spawn, "Ahh, a newcomer! Tis grand to meet thee! I have a bit a bit of a task for thou. A resident named Faeadaen hath not returned our Book of Arobos. Privy, could'st thou retrive it from her?")
end   


 function DoneBook(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I appreciate it.", "RewardBook")
    PlayFlavor(NPC, "voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb006.mp3","","thank",381115316,3913092257,Spawn)
    StartConversation(conversation, NPC, Spawn, "Many thanks unto thee! Here is a bit of coin. Spend it wisely!")
end   

 function DeliveryReturn(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I will let Viceheart know.", "DeliveryDone")
    PlayFlavor(NPC, "voiceover/english/scribe_bleemeb/qey_village04/qst_scribebleemeb004.mp3","","thank",4110253514,1354021803,Spawn)
    StartConversation(conversation, NPC, Spawn, "Finally! 'Twould hath hated to send the Qeynos guard after him! Be sure's to tell him that his buisness is no longer allowed in this shop.")
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

function RewardLeaves(NPC, Spawn)
    SetStepComplete(Spawn, Leaves, 2)
end

function RewardBook(NPC, Spawn)
    SetStepComplete(Spawn, Book, 4)
end