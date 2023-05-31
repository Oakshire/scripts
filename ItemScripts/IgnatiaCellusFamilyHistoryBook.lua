--[[
    Script Name    : ItemScripts/IgnatiaCellusFamilyHistoryBook.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.30 03:05:08
    Script Purpose : 
                   : 
--]]

local Quest = 5844

function examined(Item, Player)
conversation = CreateConversation()
if not HasQuest(Player,Quest) and not HasCompletedQuest(Player,Quest) then
    AddConversationOption(conversation, "Read the intro","Intro")
    AddConversationOption(conversation, "Close the book.","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "I am trying to compile the Cellus' family stories into remembrances of what was and how it has changed over time. If you bought this volume and its covers were removed, know that the seller is probably keeping out the good bits for him or herself!")
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
    StartDialogConversation(conversation, 2, Item, Player, "I am sure that some of my family's writings still exist elsewhere in Norrath. Unless they were destroyed in the Shattering or as mentioned before, held back by unscrupulous vendors. Whatever portion of this tome you have, cherish it and remember the Cellus family of Qeynos.")
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
StartDialogConversation(conversation, 2, Item, Player, "My name is Ignatia Cellus and my story is nothing like my grandmother's Isabella Cellus' tale. She lived in a time of relative peace, while I am in a world besieged by terrors unimaginable. The undead rise up outside Qeynos and we all fear for our --")
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
StartDialogConversation(conversation, 2, Item, Player, "-- lives. Thank the gods for Kane Bayle, commander of the Guard. His guidance will surely lead Qeynos through this dark time! He has ordered the Guard to watch every possible entry to Qeynos, which means longer shifts and journeys far from home. I am in the Guard and and fortunately, patrol --")
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
StartDialogConversation(conversation, 2, Item, Player, "-- inside the catacombs near the Guild Halls. There is a strange odor in the air; it is the smell of death. The dead are piled high and cannot be buried, for there is no one to stand guard over the mourners and keep them safe. The undead appear --")
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
StartDialogConversation(conversation, 2, Item, Player, "-- in waves that we cannot repel easily, as there are so many of them and so few of us. With the Guard trying to keep Qeynos' entrances safe, there are not enough to do other tasks. I do not remember the last time I slept at home. This is exhausting.")
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
StartDialogConversation(conversation, 2, Item, Player, "Alas! Finally, I was able to return to my home in South Qeynos, only to find such sorrow. The block of homes on my street were filled with the dead. The patrol in that quadrant had not reported in a fortnight, so I was sent to check on them. My mother --")
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
StartDialogConversation(conversation, 2, Item, Player, "-- is one who died of this horrible plague that seems to rise from beneath us. Captain Keldrane has been sent to investigate the deepest areas of the Catacombs. Commander Bayle asked me personally to escort the unarmed to safety in Qeynos Hills. Some have said this will --")
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
StartDialogConversation(conversation, 2, Item, Player, "-- spread the Guard too thinly, but Commander Bayle doubtless knows more than the general populace. I trust his judgment. He would never betray Qeynos, never! Meanwhile, I am happy to leave the city; being here reminds me too much of --")
end

function Page8(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Quest)==14 then
    QuestStepIsComplete(Player,Quest,14)
end
AddConversationOption(conversation, "Turn back to previous entry.","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "-- the family and friends I have lost. I am accompanying a group of non-combatants out of the city to a secret place known only to my family until now. I hope we will be safe there. I did not tell the commander of this place, but I know our family's stronghold will not remain secret or hidden for long.")
end


function QuestStart(Item,Player)
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, Quest)
end
