--[[
    Script Name    : ItemScripts/ABloodsabermeddlernote.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.03 03:10:52
    Script Purpose : 
                   : 
--]]

local AnIntriguingEye = 5366 -- An Intriguing Eye Quest 

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Take the time to decipher the words. ", "decipher")
AddConversationOption(conversation, "Stop inspecting", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The note is scrawled in blackish blood. It is nearly indecipherable. You have no time to read it. ")
end

function decipher(Item, Player)
if GetQuestStep(Player, AnIntriguingEye) == 2 then
SetStepComplete(Player, AnIntriguingEye, 2)
end
conversation = CreateConversation()
AddConversationOption(conversation, "Stop inspecting", "CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Humans have returned to these catacombs. The hands, once exiled, have secretly returned. The coin with the eye has been taken by a hairfoot. He was sneaky, nothing but a pen wielder. He should have perished at our claws and fangs. It is most valuable. It will help us find their new hideout among the tunnels of the undercity. We must have it back! We cannot have our resurrection stopped by the meddling of former Qeynosians. For the Plaguebringer they must be stopped.")
end