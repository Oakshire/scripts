
--[[
    Script Name    : ItemScripts/TheLadyoftheLake.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.07 03:06:23
    Script Purpose : 
                   : 
--]]

local Wife = 5584

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This autobiography sketches the life of Araminda Bayle, the wife of Kane Bayle, the Commander of the Qeynos' City Guard who was executed for his treasonous association with the Bloodsabers during the War of Plagues.")
end

function Page1(Item, Player)
conversation = CreateConversation()
if not HasQuest(Spawn,Wife) and not HasCompletedQuest(Spawn,Wife)then
QuestStart(Item,Player)
end
if GetQuestStep(Player,Wife) >=2 then
AddConversationOption(conversation, "Entry Two","Page2")
end
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Days pass, stretching before me like an abyss. That it should come to this: my husband Kane, the Commander of the Qeynos City Guard regiment, is sentenced to death. I look back, now on the eve of his execution, and wonder whether I could have saved him. I know his mother feels the same. She is old now and frail; the look in her eyes haunts me. Yet, I look into the mirror and see the same expression. Sorrow, guilt and remorse.")
end

function Page2(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==2 then
    QuestStepIsComplete(Player,Wife,2)
end
if GetQuestStep(Player,Wife) >=4 then
AddConversationOption(conversation, "Entry Three","Page3")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Our marriage was as happy as might be expected. Our parents linked our names from my birth and Kane, a lad of thirteen at the time, took the news of our betrothal poorly. I do not blame him; he was young and vigorous while I was still toddling around my mother's knee. Still, in time he grew to love me in his own fashion. Our wedding was truly the happiest day of my life. We wed on my twentieth birthday.")
end

function Page3(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==4 then
    QuestStepIsComplete(Player,Wife,4)
end
if GetQuestStep(Player,Wife) >=6 then
AddConversationOption(conversation, "Entry Four","Page4")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Our great sorrow occurred within a year of our wedding. I gave birth to Kane's first son, but within hours the babe sickened and died. For many days I lay abed, unable to speak or care for myself. Kane's sorrow was surely as great as mine. We cried together over our son's death. But then, with me so ill, it seemed prudent for Kane to take up rooms elsewhere in our home. He did not move back into my room, even after I recovered.")
end

function Page4(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==6 then
    QuestStepIsComplete(Player,Wife,6)
end
if GetQuestStep(Player,Wife) >=8 then
AddConversationOption(conversation, "Entry Five","Page5")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page3")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Kane's military career progressed quickly, and not only because he was a member of the Bayle family. He distinguished himself in arranging the City Guard into smaller subunits that could respond to danger more quickly than they had been able to in the old days. We entertained the other officers in the evenings and during the day, I did charity work with the other wives.")
end

function Page5(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==8 then
    QuestStepIsComplete(Player,Wife,8)
end
if GetQuestStep(Player,Wife) >=10 then
AddConversationOption(conversation, "Entry Six","Page6")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page4")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "It was during one of my scheduled visits to the infirmary that I first heard rumors of my husband's infidelities. The other wives were afraid to speak of it for fear of retaliation, but my special friend Greda pulled me aside and told me that everyone knew how things stood between he and I. \"How does anyone know where a man stands with his wife but his wife alone?\" I replied. I stayed until the end of my shift; I am not one to shirk my public duties.")
end

function Page6(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==10 then
    QuestStepIsComplete(Player,Wife,10)
end
if GetQuestStep(Player,Wife) >=12 then
AddConversationOption(conversation, "Entry Seven","Page7")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page5")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Now that the trial is over, I know how many women claimed that my husband was unfaithful to me. My husband was...is not a perfect man, but he is respectful of my position. My father is Lord Mrallon, who has long been a friend to the Bayle family. Kane could not disgrace my family as well as his by sinking to the levels some of these women claim. They lie, though it appears their lies are more persuasive than mine.")
end

function Page7(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==12 then
    QuestStepIsComplete(Player,Wife,12)
end
if GetQuestStep(Player,Wife) >=14 then
AddConversationOption(conversation, "Entry Eight","Page8")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page6")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Do we not all lie to ourselves at some point? How many nights had I sat beside this window wishing Kane would come to me, and instead seeing him slip down the street in the dark? I told myself then it was an emergency, the Guard needed him. And so, of all the truths and lies told about my husband, what do I want to believe now? That he was seeing other women or that he was using his strategic skills to aid our enemies?")
end

function Page8(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==14 then
    QuestStepIsComplete(Player,Wife,14)
end
if GetQuestStep(Player,Wife) >=16 then
AddConversationOption(conversation, "Entry Nine","Page9")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The questions twist in my mind like knives. When I think of my husband, I see the young man on our wedding day, handsome and proud. I see him trying to comfort me after the death of our only child. I see him in his dress uniform, smiling at me as we dance at the head of a regimental function. Who is the Kane Bayle that tonight breathes the last breaths of this life? Where has my husband gone?")
end

function Page9(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==16 then
    QuestStepIsComplete(Player,Wife,16)
end
if GetQuestStep(Player,Wife) >=18 then
AddConversationOption(conversation, "Entry Ten","Page10")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page8")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This at least the gods grant me: we have no children. I could not bear to leave a helpless being without his parents. It will be no easier to leave one's parents behind; I see my parents' faces as they were through the trial, struggling between sympathy for me and hatred for my husband. I see his parents' faces: his father, stoic and his mother unable to tear her eyes from Kane's face. How her cries torment me; she is crying yet and no one can comfort her. No one can comfort me.")
end

function Page10(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Wife)==18 then
    QuestStepIsComplete(Player,Wife,18)
end
AddConversationOption(conversation, "Turn back to previous entry.","Page9")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The sun rises. I see the shining city of Qeynos below. The sparrows fly from their nest beneath my window sill. The war has brought death and uncertainty to many lives but oh, so much more to mine. I cannot bear knowing what they think of Kane. This day, they execute my husband but through their words, they have already condemned and executed me. May my parents forgive me. May my flight prove swiftly fatal.")
end


function QuestStart(Item,Player)
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, Wife)
end

