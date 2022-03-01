--[[
    Script Name    : SpawnScripts/VerminSnye/widgetsmallpainting.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.16 08:05:54
    Script Purpose : 
                   : 
--]]

local BloodsaberRaid = 530

function spawn(NPC)

end


function respawn(NPC)
         spawn(NPC)
end


function casted_on(NPC, Spawn, Message)
              if not HasQuest(Spawn, BloodsaberRaid) and not HasCompletedQuest(Spawn, BloodsaberRaid) then
              if Message == "Examine the Painting" then
              local con = CreateConversation()
              AddConversationOption(con, "Look behind painting.", "BehindPainting")
              AddConversationOption(con, "Leave painting alone.")
              StartDialogConversation(con, 1, NPC, Spawn, "You see an old, moldy painting.")
end

function BehindPainting(NPC, Spawn)
              local con = CreateConversation()
              OfferQuest(NPC, Spawn, BloodsaberRaid)
              AddConversationOption(con, "I will stop them.")
              AddConversationOption(con, "exit")
              StartDialogConversation(con, 1, NPC, Spawn, "Behind the painting you find a piece of parchment with a crude plan and map outlining plans to raid the Irontoe estate in Qeynos.  The plan includes a major diversion by the Bloodsaber proficients, which reside in the Vermin's Snye.  They should be stopped at all costs!")
end
           
    end
        end
     