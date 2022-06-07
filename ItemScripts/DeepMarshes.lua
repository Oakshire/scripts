--[[
    Script Name    : ItemScripts/DeepMarshes.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.05 02:06:06
    Script Purpose : 
                   : 
--]]


local Deep = 5582

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Deep Marshes.\" After the sudden invasion of Gukta by the new Rallosian Army, a band of frogloks heads north to seek help.")
end

function Page1(Item, Player)
conversation = CreateConversation()
if not HasQuest(Spawn,Deep) and not HasCompletedQuest(Spawn,Deep)then
QuestStart(Item,Player)
end
if GetQuestStep(Player,Deep) >=2 then
AddConversationOption(conversation, "Entry Two","Page2")
end
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Without the aid of the Avatar of War, the ogres could never have planned such an attack. Gukta had been the site of many battles over the years, but the force arrayed by General Urduuk proved strongest of all. Now, though they were loathe to do so, the frogloks were on the run. The ogres had never before had such a force, despite their brute strength. No, it was not a newly intelligent ogre that bested the froglok, but the Avatar of War itself.")
end

function Page2(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==2 then
    QuestStepIsComplete(Player,Deep,2)
end
if GetQuestStep(Player,Deep) >=4 then
AddConversationOption(conversation, "Entry Three","Page3")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Down into the tunnels they ran, many clutching the eggs which would be a new generation of froglok. They had had time to clear the hatchery before flight. Though retreat is not the froglok way, the elders knew that living to fight another day and bearing away the eggs would be the better thing for them to do. A small garrison was left to distract the ogres and defend Gukta. The rest hurried into the dark.")
end

function Page3(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==4 then
    QuestStepIsComplete(Player,Deep,4)
end
if GetQuestStep(Player,Deep) >=6 then
AddConversationOption(conversation, "Entry Four","Page4")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"The ogre army will not be content with taking a swamp,\" said Agakk, one of the elders. \"We must send word to the outsiders, to warn them of the danger these ogres cause.\" \"I will go,\" said Guruup, bowing deeply. \"My unit and I will make our way out to Freeport. The Overlord must hear of this villainous turn of events.\" Agakk nodded. \"Yes, I agree. Go at once, Guruup and may Mithaniel Marr protect you.\"")
end

function Page4(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==6 then
    QuestStepIsComplete(Player,Deep,6)
end
if GetQuestStep(Player,Deep) >=8 then
AddConversationOption(conversation, "Entry Five","Page5")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page3")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "There are many ways through the woods and so it is with the swamps. Guruup's unit was small, for speed would be their best defense. At Innothule's northernmost point, the froglok unit conferred quickly. If they traveled up through the river valley, they would then need to cut east across the Commonlands to reach Freeport. Or, they could turn west to Qeynos instead. The direct route through the Desert of Ro was not favored, but it had the advantage of being the most direct route to Freeport.")
end

function Page5(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==8 then
    QuestStepIsComplete(Player,Deep,8)
end
if GetQuestStep(Player,Deep) >=10 then
AddConversationOption(conversation, "Entry Six","Page6")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page4")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"We must make haste, Guruup,\" whispered Barab, one of his lieutenants. \"Though the Desert is dangerously dry, it would be the way anyone would least likely expect us to take.\" Guruup nodded and said, \"You speak the truth, Barab. Through the Desert of Ro!\" They caked their skin with mud to protect it from the hot desert air, then pushed onward. To increase their chances of survival, they subdivided into smaller units that one by one crossed into the unforgiving desert.")
end

function Page6(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==10 then
    QuestStepIsComplete(Player,Deep,10)
end
if GetQuestStep(Player,Deep) >=12 then
AddConversationOption(conversation, "Entry Seven","Page7")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page5")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Traveling by night to keep out of the sun, the frogloks struggled through the swirling sands. Their skin was soft and supple by nature. Even with a layer of dried mud upon it, the frogloks felt the oppressive dryness in the air that seemed to suck every last ounce of energy from them. Gusts of wind drove the sand into their faces, rubbing them raw. As their skin cracked from lack of moisture, some of the frogloks picked at the scabs that formed almost instantly in the heat, licking their wounds to moisten their tongues with their own blood.")
end

function Page7(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==12 then
    QuestStepIsComplete(Player,Deep,12)
end
if GetQuestStep(Player,Deep) >=14 then
AddConversationOption(conversation, "Entry Eight","Page8")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page6")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "They were a tired, footsore and bedraggled group when they reached Freeport at last. Though many had not survived the harsh crossing, between the heat and the sand giants, more than three-quarters of Guruup's was still unit intact. The frogloks paused briefly to take rooms at a local inn and to cleanse themselves, then they hurried to gain an audience with the Overlord.")
end

function Page8(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==14 then
    QuestStepIsComplete(Player,Deep,14)
end
if GetQuestStep(Player,Deep) >=16 then
AddConversationOption(conversation, "Entry Nine","Page9")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "An audience with the Overlord is not always granted, and certainly never at the first request. Guruup and his lieutenants waited three days before the Overlord would see them. Even then, it was clear that he was doing so for his own hidden purpose. He met with Guruup in the long hallway and Guruup had to complete his petition before the Overlord reached the opposite end of the hall.")
end

function Page9(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==16 then
    QuestStepIsComplete(Player,Deep,16)
end
if GetQuestStep(Player,Deep) >=18 then
AddConversationOption(conversation, "Entry Ten","Page10")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page8")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Guruup was unable to convince the Overlord of the seriousness of the ogre forces. \"Come now, little one,\" the Overlord said upon reaching the hall's end. \"You have been fighting everyone for control of Grobb -- that is, Gukta -- for many generations. This is another petty squabble; I'm afraid Freeport's military cannot be spared on something like this. You'll have better luck elsewhere.\" Guruup bowed, concealing his anger as the Overlord exited the hall.")
end

function Page10(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Deep)==18 then
    QuestStepIsComplete(Player,Deep,18)
end
AddConversationOption(conversation, "Turn back to previous entry.","Page9")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"The Overlord will not get involved,\" Guruup told the frogloks. \"We have rested here long enough; let us proceed now to Qeynos. May the hand of Marr guide us.\" \"May the hand of Marr guide us,\" Guruup's unit repeated reverently. And so, the frogloks prepared for their next journey: across the Commonlands and through the plains of Karana to reach the city of Qeynos.")
end


function QuestStart(Item,Player)
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, Deep)
end
