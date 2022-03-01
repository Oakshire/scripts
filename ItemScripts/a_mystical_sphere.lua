--[[
	Script Name	: ItemScripts/a_mystical_sphere.lua
	Script Purpose	:Quest Stater for The Spirit's Release
	Script Author	: Ememjr
	Script Date	    : 2019-10-07
	Script Notes	:
--]]

local quest = 481
local itemID = 2304
function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Inspect", "dlg1")
StartDialogConversation(conversation, 2, Item, Player, "A petrified heart.")
	if not HasQuest(Player, quest) and not HasCompletedQuest(Player, quest) then
		OfferQuest(nil, Player, quest)
	elseif HasQuest(Player, quest) and QuestStepIsComplete(Player, quest, 2) then
        SetStepComplete(Player, quest, 2)
		while HasItem(Player, itemID, 1) do
            RemoveItem(Player, itemID)
		end
	end
end


function obtained(Item, Player)
if HasItem(Player, itemID) or  GetItemCount(Item) > 1 then
RemoveItem(Player, itemID)
end
end


function dlg1(Item, Player)
conversation = CreateConversation()    
AddConversationOption(conversation, "Inspect Further",  "dlg2")    
StartDialogConversation(conversation, 2, Item, Player, "This humanoid heart has been petrified and scorched black.  Every detail of the organ has been flawlessly preserved, revealing a distant former life and function.  As cold and lifeless it may be now, it does not feel quite as stone to the touch.  It is soft like chalk and leaves a residue of ash on your fingers.")
end

function dlg2(Item, Player)
conversation = CreateConversation()    
AddConversationOption(conversation, "Inspect Orb", "dlg3")
StartDialogConversation(conversation, 2, Item, Player, "As you continue to probe the heart with your curiosity, its seemingly sturdy form cracks and crumbles.  Within a short moment, it falls away to dust in your grasp, leaving behind a pearl-sized metallic orb amidst the layer of black ash in your hand.")
end

function dlg3(Item, Player)
conversation = CreateConversation()  
AddConversationOption(conversation, "Who are you?", "dlg4")
StartDialogConversation(conversation, 2, Item, Player, "Your fingers touch the smooth, glossy surface of the metallic orb.  Its once cool temperature suddenly becomes cold as ice, burning your fingers with the threat of frostbite.  This sensation rushes through your arm and into your skull, bringing with it the distant echo of a desperate plea, ''Do not leave me to this tortured silence.  Please, do not deny me vengeance!''")
end    
    
function dlg4(Item, Player)
conversation = CreateConversation() 
AddConversationOption(conversation, "What is the strength of the stone?", "dlg5")
AddConversationOption(conversation, "What do you want me to avenge?", "dlg9")
StartDialogConversation(conversation, 2, Item, Player, "''I am one among the dead and forgotten.  This cannot be undone, but still I have need of you.  Lend me your steel; let me guide it to vengeance!  You will know great power in the end. I will show you the strength of the stone.''")
end

function dlg5(Item, Player)
 conversation = CreateConversation() 
AddConversationOption(conversation, "Who are your murderers?", "dlg6")
AddConversationOption(conversation, "What do you want me to avenge?", "dlg9")
StartDialogConversation(conversation, 2, Item, Player, "''I can show you. I will show you, but only in oblivion.  I absorb the power.  It sustains me but I cannot break free of it on my own.  Kill my murderers and release their hold on me!  That is the only way you will have this power.''")
end

function dlg6(Item, Player)
conversation = CreateConversation() 
AddConversationOption(conversation, "What did they do to you?", "dlg7")
AddConversationOption(conversation, "What did you do to earn this punishment?", "dlg8")
StartDialogConversation(conversation, 2, Item, Player, "''The Netherot Chanters did this to me.  They have a lab beneath the city where they are guarded by the Darkblades whom they serve.  They must answer for what they have done to me.  They must die!  Please, lift this torturous spell.  Let me know oblivion.''")
end

function dlg7(Item, Player)
conversation = CreateConversation() 
AddConversationOption(conversation, "What did you do to earn this punishment?", "dlg8")
StartDialogConversation(conversation, 2, Item, Player, "''I was a Darkblade once, but they found another use for me.  They imprisoned me in my skeletal cage and bound my spirit to this stone.  I still feel the pain of the ritual; the filthy sewer air still stings my naked heart.  My own cries of agony still echo in this purgatory!''")
end

function dlg8(Item, Player)
conversation = CreateConversation() 
AddConversationOption(conversation, "I will send you to oblivion, if that is your desire.", "dlg9")
AddConversationOption(conversation, "I'd rather you dwell in your eternal misery.")
StartDialogConversation(conversation, 2, Item, Player, "''I did nothing!  I do not know why I was chosen for the pain, but it must end.  Their deaths must break this spell.  Kill them all.  It is the only way.  Do this and I will show you the strength of the stone.''")
end

function dlg9(Item, Player)
conversation = CreateConversation() 
AddConversationOption(conversation, "Oh yes, they will suffer... and then they will die.")
StartDialogConversation(conversation, 2, Item, Player, "''Yes... yes, my friend... my savior.  Kill them.  Kill the netherot chanters and release me!''")
end    
