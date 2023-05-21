--[[
    Script Name    : ItemScripts/IsabellaCellusFamilyHistoryBook.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.20 02:05:33
    Script Purpose : 
                   : 
--]]

local Quest = 5843

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player,Quest) and not HasCompletedQuest(Player,Quest) then
    AddConversationOption(conversation, "Read the intro","Intro")
    AddConversationOption(conversation, "Close the book.","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This is more of a portfolio than book as so many pages are missing. Reading through the pages that exist, I get the impression that the remaining pages are likely to be found in and around Antonica.")
else
    Intro(Item,Player)
end
end

function Intro(Item,Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Entry One","Page1")
    if HasQuest(Player,Quest) then
    AddConversationOption(conversation, "Turn to last page","PageCheck")
    end
    AddConversationOption(conversation, "Close the book.","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "I am sure that some of my family’s writings still exist elsewhere in Norrath. Unless they were destroyed in the Shattering or as mentioned before, held back by unscrupulous vendors. Whatever portion of this tome you have, cherish it and remember the Cellus family of Qeynos.")
end

function PageCheck(Item,Player)
    if GetQuestStep(Player,Quest) ==1 or GetQuestStep(Player,Quest) ==2 then
    Page1(Item, Player)
    elseif GetQuestStep(Player,Quest) ==3 or GetQuestStep(Player,Quest) == 4 then
    Page2(Item, Player)
    elseif GetQuestStep(Player,Quest) == 5 or GetQuestStep(Player,Quest) ==6 then       
    Page3(Item, Player)
    elseif GetQuestStep(Player,Quest) ==7 or GetQuestStep(Player,Quest) ==8 then       
    Page4(Item, Player)
    elseif GetQuestStep(Player,Quest) ==9 or GetQuestStep(Player,Quest) ==10 then
    Page5(Item, Player)
    elseif GetQuestStep(Player,Quest) ==11 or GetQuestStep(Player,Quest) ==12 then
    Page6(Item, Player)
    elseif GetQuestStep(Player,Quest) ==13 or GetQuestStep(Player,Quest) ==14 then
    Page7(Item, Player)
    elseif GetQuestStep(Player,Quest) ==15 or GetQuestStep(Player,Quest) ==16 then
    Page8(Item, Player)
    elseif GetQuestStep(Player,Quest) ==17 or GetQuestStep(Player,Quest) ==18 then
    Page9(Item, Player)
    end
end

function Page1(Item, Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest)then
    QuestStart(Item,Player)
    end
if GetQuestStep(Player,Quest) >=2 then
AddConversationOption(conversation, "Entry Two","Page2")
end
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "“Antonica,”\nby Isabella Cellus.\n\nI am travelling through an area known as Qeynos Hills. It’s filled with quite a population of animals and different sorts of folks. Someone is following me -")
end

function Page2(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==2 then
    QuestStepIsComplete(Player,Quest,2)
end
if GetQuestStep(Player,Quest) >=4 then
AddConversationOption(conversation, "Entry Three","Page3")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- so I am not enjoying this journey. Anyway, from these Hills, one can see North Qeynos, Western Karana and the frosted peaks of the northern mountains. The Sabertooth gnolls that came over from Blackburrow are especially annoying. They keep stealing my paper! Those little runts! During my --")
end

function Page3(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==4 then
    QuestStepIsComplete(Player,Quest,4)
end
if GetQuestStep(Player,Quest) >=6 then
AddConversationOption(conversation, "Entry Four","Page4")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- travels, I’ve met a lovely ranger named Holly Windstalker. She’s very friendly and outgoing, but a bit crazed about wolves and bears. We were having a picnic near the Surefall Glades, when someone walked by with --")
end

function Page4(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==6 then
    QuestStepIsComplete(Player,Quest,6)
end
if GetQuestStep(Player,Quest) >=8 then
AddConversationOption(conversation, "Entry Five","Page5")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page3")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- a wolf pelt over his shoulder. Holly went nuts! She up and gave this poor fellow a piece of her mind, then chased him all the way to Blackburrow! He shouted at her, “My lady --")
end

function Page5(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==8 then
    QuestStepIsComplete(Player,Quest,8)
end
if GetQuestStep(Player,Quest) >=10 then
AddConversationOption(conversation, "Entry Six","Page6")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page4")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- the wolf attacked me first!” Holly didn’t seem to care. I think I’ll head over that way to interview him for my next bit on Blackburrow. Thanks to Holly, now I know someone who goes there!")
end

function Page6(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==10 then
    QuestStepIsComplete(Player,Quest,10)
end
if GetQuestStep(Player,Quest) >=12 then
AddConversationOption(conversation, "Entry Seven","Page7")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page5")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The fellow Holly chased to Blackburrow is related to a handsome scout named Malityn. He’s very noble and good-hearted, and I’ve been spending a lot of time with him. Blackburrow is a classic dungeon, very dark and gloomier the further down into it one gets. Groups of Sabertooth gnolls are hard at work digging out tunnels. With Malityn at my side, however, I felt very safe. He must do something about --")
end

function Page7(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==12 then
    QuestStepIsComplete(Player,Quest,12)
end
if GetQuestStep(Player,Quest) >=14 then
AddConversationOption(conversation, "Entry Eight","Page8")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page6")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- his hair. Anyway, Blackburrow is a pretty dismal place and dampness is not good for my complexion. Malityn was starting to be so possessive! If anyone so much as spoke to me, he’d whack off their head! So, it’s farewell to Malityn and back to Qeynos Hills. Hopefully, I’ll be able to shake this cold. I’m going to gather some willowbark to brew some tea, which will help tremendously with my headache. I saw some willows to the north, beyond the aqueduct.")
end

function Page8(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==14 then
    QuestStepIsComplete(Player,Quest,14)
end
if GetQuestStep(Player,Quest) >=16 then
AddConversationOption(conversation, "Entry Nine","Page9")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There is a lot of unrest these days in the Qeynos Hills, which makes me rethink my adventuring out in the wilds. Barbarians are moving southward from their home in Halas, although the reason isn’t clear to me. They sure are big, though! I might wander up that way. That would mean another trip through Blackburrow, though, and I am not sure I’m ready to face --")
end

function Page9(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==16 then
    QuestStepIsComplete(Player,Quest,16)
end
if GetQuestStep(Player,Quest) >=18 then
AddConversationOption(conversation, "Entry Ten","Page10")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page8")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- Malityn. Unless he’s ready to move on with me, there is no point in continuing to see him. Holly says scouts can be that way, especially when he spends all that time underground, investigating those gnolls. Some days I wish I had --")
end

function Page10(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==18 then
    QuestStepIsComplete(Player,Quest,18)
end
AddConversationOption(conversation, "Turn back to previous entry.","Page9")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- never left the safety of South Qeynos. Malityn says he’s ready to leave Blackburrow and come with me, as he thinks the damp is ruining his hair. At last! The woods and hills are lovely but I will lay aside my pen for now and return to my home. Perhaps our daughter will carry on the tale.")
end


function QuestStart(Item,Player)
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, Quest)
end
