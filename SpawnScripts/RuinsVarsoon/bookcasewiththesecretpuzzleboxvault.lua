--[[
    Script Name    : SpawnScripts/RuinsVarsoon/bookcasewiththesecretpuzzleboxvault.lua
    Script Author  : Premierio015
    Script Date    : 2023.05.05 07:05:25
    Script Purpose : 
                   : 
--]]

local TheHiddenRiddle = 5531

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect' then
    local con = CreateConversation()
    AddConversationOption(con, "'Logbook - Varsoon Apprentices'")
    AddConversationOption(con, "'Conflict and Harmony'", "ConflictAndHarmony")
    AddConversationOption(con, "Leave the bookcase alone.")
    StartDialogConversation(con, 1, NPC, Spawn, "This bookcase is filled with numerous tomes. Much of it is covered in dust as if these vaults of knowledge have not been utilized in centuries.")
end
end


function ConflictAndHarmony(NPC, Spawn)
 if GetQuestStep(Spawn, TheHiddenRiddle) == 1 then
     SetStepComplete(Spawn, TheHiddenRiddle, 1)
end
 local con = CreateConversation()
    AddConversationOption(con, "Leave the safe alone.")
    if GetQuestStep(Spawn,  TheHiddenRiddle) == 4 then
    AddConversationOption(con, "Use the skull and star keys.", "UseSkullAndStarKeys")
    end
    StartDialogConversation(con, 1, NPC, Spawn, "This book is extremely thick and must have more pages than a gnomish tinker's design document! You attempt to slide it out, but instead the binding slides down to expose the false book as a secret vault. There are two keyholes on the lock. Above each is a small image. One image is a skull and the other is a star.")
end    

function UseSkullAndStarKeys(NPC, Spawn)
SetStepComplete(Spawn, TheHiddenRiddle, 4)
local con = CreateConversation()
 AddConversationOption(con, "Close the secret vault.")
 StartDialogConversation(con, 1, NPC, Spawn, "You unlock the vault and it opens with a rush of cold air. You must be crazy because you thought you heard indecipherable whispers coming from the dark recess. You reach in and discover the puzzle box called 'The Riddle of Saryrn.' You take it.")
end     

function respawn(NPC)
	spawn(NPC)
end