--[[
    Script Name    : ItemScripts/TheWheelofVaniki.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:21
    Script Purpose : 
                   : 
--]]

local TheWheelOfVaniki = 5230

function examined(Item, Player)
Say(Player, "TEST")
conversation = CreateConversation()
if GetQuestStep(Player, TheWheelOfVaniki) == 5 then
AddConversationOption(conversation, "Add the contents of the bottle to the Wheel.", "Option1")
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
