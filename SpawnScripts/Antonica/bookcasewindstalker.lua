--[[
    Script Name    : SpawnScripts/Antonica/bookcasewindstalker.lua
    Script Author  : Premierio015
    Script Date    : 2023.04.15 08:04:39
    Script Purpose : 
                   : 
--]]
local TheLegendOfMotte = 5803 -- THE LEGEND OF MOTTE QUEST
local TheHuntForTheWindstalkerRumbler = 5804 -- THE HUNT FOR THE WINDSTALKER RUMBLER QUEST


function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'inspect' then
      local con = CreateConversation()
       AddConversationOption(con, "\"The Case of the Windstalker Rumbler\"", "con1_1")
        AddConversationOption(con, "\"The Legend of Motte\"", "con2_1")
         AddConversationOption(con, "Stop browsing")
        StartDialogConversation(con, 1, NPC, Spawn, "The bookcase is made of weathered oak. There are a lot of old books upon its shelves. Most of these books haven't been moved in decades.")
end
   end            
            
function respawn(NPC)
	spawn(NPC)
end

------- THE HUNT FOR THE WINDSTALKER SCRIPT PART
function con1_1(NPC, Spawn)
     local con = CreateConversation()
       AddConversationOption(con, "Next page", "con1_2")
         AddConversationOption(con, "Close the book")
         StartDialogConversation(con, 1, NPC, Spawn, "\"The Case of the Windstalker Rumbler\" by Varlone Redrick.  The countryside of Antonica has long been known for its tranquil majesty. The rolling hills and stunning coastal seascapes, but once every season have inspired many of poets or so this tranquility is interrupted by the quaking of the ground and the appearance of a ravenous beast known for ages as the Windstalker Rumbler.")
end

function con1_2(NPC, Spawn)
     local con = CreateConversation()
       AddConversationOption(con, "Next page", "offer")
             AddConversationOption(con, "Previous page", "con1_1")
         AddConversationOption(con, "Close the book")
         StartDialogConversation(con, 1, NPC, Spawn, "The Windstalker Rumbler has been appearing in the Qeynos Hills territory since the end of the Age of War.  It is rumored to have been a curse placed upon the land by the god of the subterranean realms, Brell Serilis.  The beast has been known to swallow livestock whole, and on some unfortunate occasions...  Antonicans.  One recent account places Marlea Sayer as a victim of the beast.  The tale places her in the tunnel of the Dragon Maw Ridge, attempting to reach the north Antonica in timely fashion rather than navigate around the ridge.  It is in this darkness that the Windstalker Rumbler would swallow her whole.  It would take an army to stop such a beast.")
end

function offer(NPC, Spawn)
if CanReceiveQuest(Spawn, TheHuntForTheWindstalkerRumbler) then
OfferQuest(NPC, Spawn, TheHuntForTheWindstalkerRumbler)
end
   end




----- THE LEGEND OF MOTTE SCRIPT PART
function con2_1(NPC, Spawn)
      local con = CreateConversation()
       AddConversationOption(con, "Next page", "con2_2")
         AddConversationOption(con, "Close the book")
         StartDialogConversation(con, 1, NPC, Spawn, "\"The Legend of Motte\" by Vhalen of the plains.  Friend of Motte listen well all you creatures of glory.  Listen well to the tale of Motte. Motte was a warrior brave and true.  Motte was a warrior bound to bring those traveling beside plenty of gloom.  His luck was unsure.  His directions misguided.  He begins journeys safe.  He turns them unsafe.")
end

function con2_2(NPC, Spawn)
      local con = CreateConversation()
       AddConversationOption(con, "Next page", "con2_3")
       AddConversationOption(con, "Previous page", "con2_1")
         AddConversationOption(con, "Close the book")
         StartDialogConversation(con, 1, NPC, Spawn, "Motte had faced perils in the mines of Highkeep.  He faced them with his allies who tried their best.  Tried to keep Motte from reliving action of Unrest.  Many a time in places of crossed swords.  Many a time did Motte call forth the hordes.  His skill with his sword was matched with misfortune, but one season came when in the hills of Qeynos his days would be done.")
end

function con2_3(NPC, Spawn)
      local con = CreateConversation()
       AddConversationOption(con, "Next page", "con2_4")
       AddConversationOption(con, "Previous page", "con2_2")
         AddConversationOption(con, "Close the book")
         StartDialogConversation(con, 1, NPC, Spawn, "There upon the roads did mighty Motte run.  All the while when his friends were in taverns filled with much fun.  Traveling alone, crossing the stream.  Motte came upon a road in ravine.  Onward he marched fearless and brave.  Onward he marched to meet the many evil knave.  Trapped fore and aft and nowhere to flee.  Motte fought valiantly against highwaymen and only death could he see.")
end

function con2_4(NPC, Spawn)
    if CanReceiveQuest(Spawn, TheLegendOfMotte) then
      OfferQuest(NPC, Spawn, TheLegendOfMotte)
      end
      local con = CreateConversation()
      if GetQuestStep(Spawn, TheLegendOfMotte) == 2 or GetQuestStep(Spawn, TheLegendOfMotte) == 3 or  HasCompletedQuest(Spawn, TheLegendOfMotte) then
       AddConversationOption(con, "Next page", "con2_5")
       end
       AddConversationOption(con, "Previous page", "con2_3")
         AddConversationOption(con, "Close the book")
         StartDialogConversation(con, 1, NPC, Spawn, "Motte has passed on, but his spirit is without rest.  Only the trotters of now can be put to the test.  Seek out his slayers in this tale of old.  Send them to grave in, graves of tenfold.  His spirit will be free and the saviors will see.  Will see that this book has much to offer, an offer that is key.")
end

function con2_5(NPC, Spawn)
    if GetQuestStep(Spawn, TheLegendOfMotte) == 2 then
    SetStepComplete(Spawn, TheLegendOfMotte, 2)
    end
      local con = CreateConversation()
       AddConversationOption(con, "Previous page", "con2_4")
         AddConversationOption(con, "Close the book")
         StartDialogConversation(con, 1, NPC, Spawn, "This page was not here before!  There are no words on the pages... only a key.  The Key reads, \"Tombstone\"")
end


