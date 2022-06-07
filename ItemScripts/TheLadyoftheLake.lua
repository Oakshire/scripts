--[[
    Script Name    : ItemScripts/TheLadyoftheLake.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.07 03:06:23
    Script Purpose : 
                   : 
--]]

local Lake = 5583

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Waiting for an inevitable war is never easy. In this book, we meet two Qeynosian Guards at an outpost on LakeRathetear who find themselves on the edge of war and far from home.")
end

function Page1(Item, Player)
conversation = CreateConversation()
if not HasQuest(Spawn,Lake) and not HasCompletedQuest(Spawn,Lake)then
QuestStart(Item,Player)
end
if GetQuestStep(Player,Lake) >=2 then
AddConversationOption(conversation, "Entry Two","Page2")
end
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The drums echoed in the RatheMountains and reverberated through the deep waters of LakeRathetear. They were victory drums, sounded by the ogres of the new Rallosian Army. They had taken the mountains and now their drums warned of their advance to the Lake itself. Aviak scouts reported their progress and numbers. There were so many ogres and trolls, it was said that the road was blackened by their shadows as far as the aviak eye could see.")
end

function Page2(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==2 then
    QuestStepIsComplete(Player,Lake,2)
end
if GetQuestStep(Player,Lake) >=4 then
AddConversationOption(conversation, "Entry Three","Page3")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"Why do they come here?\" asked Ilkalla, one of the Qeynosian guards stationed at the Lake. \"Because they can,\" responded Gerren, the other guard. \"And here we are, unable to send word to Qeynos. We will die fighting alongside these savages.\" \"Do not say such a thing,\" Ilkalla said uncomfortably. \"They have treated us very kindly since word of the Rallosian Army reached them. You may not like them, but the aviaks have offered us shelter in these uncertain times.\"")
end

function Page3(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==4 then
    QuestStepIsComplete(Player,Lake,4)
end
if GetQuestStep(Player,Lake) >=6 then
AddConversationOption(conversation, "Entry Four","Page4")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Smoke curled on the opposite shore of the LakeRathetear, which obscured whatever the Rallosian Army was doing. The drums in the mountains had stopped. Other than the acrid tang of smoke drifting across the water, one might forget that the ogres were there. A squadron of aviaks swooped low into the smoke to get a closer look; their report was not encouraging. The ogres were apparently cutting down massive numbers of trees, stripping their bark and sharpening their ends into spikes.")
end

function Page4(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==6 then
    QuestStepIsComplete(Player,Lake,6)
end
if GetQuestStep(Player,Lake) >=8 then
AddConversationOption(conversation, "Entry Five","Page5")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page3")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Ilkalla wondered what the ogres would do with spikes the size of trees. It seemed unlikely they would build a fortification; they were on the offense not defense. \"We must get closer...but so far the aqua goblins in the Lake are not cooperating with us. I must make them understand the danger to us all. If I can get safe passage, I could find out what the Rallosians are planning.\" The aqua goblins had for the most part retreated to their lairs in the midst of the Lake, trusting its deep waters to keep them safe.")
end

function Page5(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==8 then
    QuestStepIsComplete(Player,Lake,8)
end
if GetQuestStep(Player,Lake) >=10 then
AddConversationOption(conversation, "Entry Six","Page6")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page4")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "One of the aviaks that Ilkalla had befriended went with her to the aqua goblins' chief. The discussion was disappointing to some extent, as the chief was more interested in the baubles Ilkalla had brought as gifts than he was in the danger posed by the Rallosians. It took the better part of the morning before he agreed to allow her safe conduct through the Lake. \"I don't speak for them sharks, though,\" the chief said with a snicker. Ilkalla was a strong swimmer though and knew how to deal with the sharks.")
end

function Page6(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==10 then
    QuestStepIsComplete(Player,Lake,10)
end
if GetQuestStep(Player,Lake) >=12 then
AddConversationOption(conversation, "Entry Seven","Page7")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page5")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Under cover of darkness, Ilkalla slipped off through the black water. She opted for a small coracle and paddled silently across the Lake. The smoke that drifted across the water may have hidden the ogres' activities but it also provided Ilkalla with excellent concealment from any watching eyes. She soon found out that if anyone were watching her, it wasn't the ogres. They were apparently so confident of victory that they set no watch along the shore.")
end

function Page7(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==12 then
    QuestStepIsComplete(Player,Lake,12)
end
if GetQuestStep(Player,Lake) >=14 then
AddConversationOption(conversation, "Entry Eight","Page8")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page6")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Though she was tired from her trip across the Lake, Ilkalla knew she could not stop to rest. She must find out what the ogres were doing and then paddle back across the Lake without being caught. Pausing to listen for indications that she had been seen, Ilkalla methodically investigated the narrow beach until she found what she was seeking. The ogres were not using the sharpened tree trunks to build a fort; they were building a raft.")
end

function Page8(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==14 then
    QuestStepIsComplete(Player,Lake,14)
end
if GetQuestStep(Player,Lake) >=16 then
AddConversationOption(conversation, "Entry Nine","Page9")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Quickly, Ilkalla returned to the coracle and paddled quickly back where Gerren and the aviak leaders waited for her. \"They're planning to transport themselves across the Lake,\" Ilkalla panted as soon as she stepped ashore. \"They are building a raft, a barge of immense size to carry their troops. It is nearly done.\" She sank to the shore and inhaled deeply. \"We need help.\"")
end

function Page9(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==16 then
    QuestStepIsComplete(Player,Lake,16)
end
if GetQuestStep(Player,Lake) >=18 then
AddConversationOption(conversation, "Entry Ten","Page10")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page8")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Gerren pushed back his hair and said, \"The time to send for help is long past. The aqua goblins may have let you pass once, but they will surely side with the ogres and trolls.\" Ilkalla nodded, adding, \"We must make for Karana and thence to Qeynos.\" Gerren laughed, \"I would not let you take all the glory, my friend. You crossed the Lake; I will cross the mountains. The aviaks will not be able to stand alone.\"")
end

function Page10(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player,Lake)==18 then
    QuestStepIsComplete(Player,Lake,18)
end
AddConversationOption(conversation, "Turn back to previous entry.","Page9")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "\"They stand not alone,\" said a deep, rumbling voice nearby. Ilkalla and Gerren turned, startled to see a centaur. He bowed and said, \"The aviaks sent word to us. While we have not always agreed on things, this is different. This is war.\" Ilkalla slowly stood, looking over her shoulder across the dark water. \"Yes,\" she said softly, \"This is definitely war.\"")
end


function QuestStart(Item,Player)
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, Lake)
end
