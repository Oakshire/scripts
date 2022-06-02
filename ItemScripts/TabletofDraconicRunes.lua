--[[
    Script Name    : ItemScripts/TabletofDraconicRunes.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.01 07:06:48
    Script Purpose : 
                   : 
--]]
local Drag = 5577

function examined(Item, Player)

conversation = CreateConversation()
if HasQuest(Player, Drag)  then
AddConversationOption(conversation, "Study the runes.", "Study")
end
AddConversationOption(conversation, "Put the tablet away.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "This tablet is inscribed with all the runes of the Draconic language.")
end

function Study(Item,Player)
    QuestStepIsComplete(Player,Drag,3)
    QuestStepIsComplete(Player,Drag,4)
    QuestStepIsComplete(Player,Drag,5)
    QuestStepIsComplete(Player,Drag,6)
    QuestStepIsComplete(Player,Drag,7)
    QuestStepIsComplete(Player,Drag,8)    
    QuestStepIsComplete(Player,Drag,9)
    QuestStepIsComplete(Player,Drag,10)
    QuestStepIsComplete(Player,Drag,11)
    QuestStepIsComplete(Player,Drag,12)
    QuestStepIsComplete(Player,Drag,13)    
    QuestStepIsComplete(Player,Drag,14)
    QuestStepIsComplete(Player,Drag,15)
    QuestStepIsComplete(Player,Drag,16)
    QuestStepIsComplete(Player,Drag,17)
    QuestStepIsComplete(Player,Drag,18)
    QuestStepIsComplete(Player,Drag,19)
    QuestStepIsComplete(Player,Drag,20)
    QuestStepIsComplete(Player,Drag,21)    
    QuestStepIsComplete(Player,Drag,22)
    QuestStepIsComplete(Player,Drag,23)
    QuestStepIsComplete(Player,Drag,24)
    QuestStepIsComplete(Player,Drag,25)
    QuestStepIsComplete(Player,Drag,26)    
    QuestStepIsComplete(Player,Drag,27)
    QuestStepIsComplete(Player,Drag,28) 
    end