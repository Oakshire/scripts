--[[
    Script Name    : ItemScripts/TheWheelofVaniki.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:21
    Script Purpose : 
                   : 
--]]

local TheWheelOfVaniki = 5230

function examined(Item, Player)
conversation = CreateConversation()
if GetQuestStep(Player, TheWheelOfVaniki) == 5 then
AddConversationOption(conversation, "Add the contents of the bottle to the Wheel.", "Option1")
elseif GetQuestStep(Player, TheWheelOfVaniki) == 7 then
AddConversationOption(conversation, "Add the contents of the Vial to the Wheel.", "Option2")
elseif GetQuestStep(Player, TheWheelOfVaniki) == 9 then
AddConversationOption(conversation, "Dip the Wheel into the Barrel, which is full of sea salt.", "Option3")
end
AddConversationOption(conversation, "Put the object away.", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Though its outer hull is slightly damaged, the object is definitely shaped like a wheel -- the Wheel of Vaniki.  Even with the cracks in the wooden shell, it's possible that the instructions given to you by Engineer Klaaska will restore it to whatever its former glory may have been.")
end

function Option1(Item, Player)
SetStepComplete(Player, TheWheelOfVaniki, 5)
conversation = CreateConversation()    
AddConversationOption(conversation, "Put the Wheel of Vaniki away.")    
StartDialogConversation(conversation, 2, Item, Player, "You pour the contents of the bottle into the Wheel and are surprised to see that whatever damage the Wheel has sustained, it has not sprung any leaks.  Engineer Klaaska's instructions state that you will need to rotate the Wheel.  The bottle's contents coat its interior; perhaps it is some sort of hardening agent.  Now you must locate a vial the roekillik had hidden and add that to the Wheel.")
end

function Option2(Item, Player)
SetStepComplete(Player, TheWheelOfVaniki, 7)
conversation = CreateConversation()    
AddConversationOption(conversation, "Put the Wheel of Vaniki away.")    
StartDialogConversation(conversation, 2, Item, Player, "You pour the contents of the Vial into the Wheel and swirl it together with the contents of the Sacred Bottle of Contentment.  It's too dark to see what's happening on the inside, but the Wheel's balance is slowly restored.  The last step will be to locate the Ancient Alkaline Barrel, which is too big for the ''little ones'' to have carried away.")
end

function Option3(Item, Player)
SetStepComplete(Player, TheWheelOfVaniki, 9)
conversation = CreateConversation()    
AddConversationOption(conversation, "Put the Wheel of Vaniki away.")    
StartDialogConversation(conversation, 2, Item, Player, "You place the Wheel into the Barrel and coat it in the sea salt.  Since salt is a corrosive agent, you're not quite sure how this step will aid the restoration of the Wheel, but Engineer Klaaska said this was the last step.  With the Wheel coated in salt, you're ready to return it to the Engineer.  Hopefully, all your efforts have restored the Wheel to its former glory.")
end



