--[[
    Script Name    : SpawnScripts/DownBelow/inspectunseenhandbookstack.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.02 09:10:37
    Script Purpose : 
                   : 
--]]

local AnIntriguingEye = 5366

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Inspect' then
      local con = CreateConversation()
       AddConversationOption(con, "\"The Flight of the Crow\"", "dlg1")
        AddConversationOption(con, "Stop inspecting")
        StartDialogConversation(con, 1, NPC, Spawn, "This is a stack of books. Nothing looks particularly interesting, but there may be a few volumes that pique your interest.")
end
end

function dlg1(NPC, Spawn)
    local con = CreateConversation()
     AddConversationOption(con, "Inspect the recent writing.", "offer")
    AddConversationOption(con, "Stop inspecting")
    StartDialogConversation(con, 1, NPC, Spawn, "The book is titled \"The Flight of the Crow\". It has no author. A thick complex looking lock binds it. There is an image on the book of an eye. Forming a circle around the eye is a band formed of open hands. There seems to be a small note written on it in dark ink as if written recently.")
end

function offer(NPC, Spawn)
    if not HasQuest(Spawn, AnIntriguingEye) and not HasCompletedQuest(Spawn, AnIntriguingEye) then
    OfferQuest(NPC, Spawn, AnIntriguingEye)
    end
         local con = CreateConversation()
        AddConversationOption(con, "Stop inspecting")
       StartDialogConversation(con, 1, NPC, Spawn, "\"The rat men have taken a coin. Hunt them down and get them at all costs.\"")
end
    
function respawn(NPC)
	spawn(NPC)
end