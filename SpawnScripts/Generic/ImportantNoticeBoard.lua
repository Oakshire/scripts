--[[
    Script Name    : SpawnScripts/Generic/ImportantNoticeBoard.lua
    Script Author  : Dorbin
    Script Date    : 2022.11.18 11:11:22
    Script Purpose : FACILITATES FAQ BOARDS
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
  if SpellName == 'Read' then
    MainMenu(NPC,Spawn)
end
end

function CloseConvo(NPC,Spawn)
    CloseConversation(NPC,Spawn)
end

function MainMenu(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Discord ]", "Discord")
    AddConversationOption(con, "[ Goal ]", "Goal")
    AddConversationOption(con, "[ Server Status ]", "CurrentStatus")
    AddConversationOption(con, "[ Content Status ]", "ContentStatus")
    AddConversationOption(con, "[ Report a Bug? ]", "Bugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "This board contains FAQ and Status information about the EQ2EMU Content Development")
end

function Discord(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Goal ]", "Goal")
    AddConversationOption(con, "[ Server Status ]", "CurrentStatus")
    AddConversationOption(con, "[ Content Status ]", "ContentStatus")
    AddConversationOption(con, "[ Report a Bug? ]", "Bugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "There are 2 EQ2EMU test servers in the production process, EQ2EMU (Discord Channel: EQ2Emu) and Zeklabs (Discord Channel: EQ2EQ2 & EQ2PVP).\n\n Both have distinct Discord channels that generally share information.  EQ2EMU handles most Content updates & related bug reports. Zeklabs handles hard coding / server stability.  Both servers exchange data frequently to coordinate the best testing server experiences.\n\nChoose your test server accordingly.")
 end   
 
 function Goal(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Discord ]", "Discord")
    AddConversationOption(con, "[ Server Status ]", "CurrentStatus")
    AddConversationOption(con, "[ Content Status ]", "ContentStatus")
    AddConversationOption(con, "[ Report a Bug? ]", "Bugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "Goal: The ability to take what is developed here and apply it to a custom server.  Content across the EMU is focused from Classic to Alter of Malice (AoM) in various states. A future server opporator can take the EQ2EMU tools and apply their own rulesets with the content foundation here.\n\n Currently, the AOM client has had the most stability work completed, but other clients, such as Desert of Flames (DoF) have some minor support until they recieve additional attention.")
 end   
 
function CurrentStatus(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Goal ]", "Goal")
    AddConversationOption(con, "[ Server Status ]", "CurrentStatus")
    AddConversationOption(con, "[ Content Status ]", "ContentStatus")
    AddConversationOption(con, "[ Report a Bug? ]", "Bugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "Server Status: The EQ2EMU is in Pre-Alpha, meaning there are many areas with some work done but far from what is expected for the \'True Experience\'.\n\n NOTE: Character Stats are using the OLD system, where each stat is used by all characters (e.g. Scouts use Wisdom for resistance)\n\n Refer to the other portions on this board for Zone / Content specific information.")
    end  

function ContentStatus(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Zones ]", "Zones")
    AddConversationOption(con, "[ Combat ]", "Combat")
    AddConversationOption(con, "[ Tradeskill ]", "Tradeskill")
    AddConversationOption(con, "[ Quests ]","Quests")
    AddConversationOption(con, "[ Player Housing ]","PlayerHouse")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
   StartDialogConversation(con, 1, NPC, Spawn, "Content Status: Content is broken into subcategories:\nZones\nCombat\nTadeskill\nQuests\nPlayer Housing.\n\n These are just basic content areas with general descriptions of their states.")
end  

function Zones(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Zones ]", "Zones")
    AddConversationOption(con, "[ Combat ]", "Combat")
    AddConversationOption(con, "[ Tradeskill ]", "Tradeskill")
    AddConversationOption(con, "[ Quests ]","Quests")
    AddConversationOption(con, "[ Player Housing ]","PlayerHouse")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
   StartDialogConversation(con, 1, NPC, Spawn, "Zones: Classic Content zones have received the most attention.\n\n Isle of Refuge is nearly 90%\n\n  Classic Qeynos and all of its \'hoods\' & dungeons are the most complete.\n\n Queen's Colony is nearly 90%,\n\n Outpost of the Overlord is roughly 80%.\n\n Freeport is roughly 30% complete with an Ecology pass still necessary.\n\n Frostfang Sea is mostly complete.\n\n Various other zones, such as Nek Castle, and Tier 5 raid zones have had unique attention.\n\n NOTE: EVERYTHING is a work in progress!")
end  
 
function Combat(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Zones ]", "Zones")
    AddConversationOption(con, "[ Combat ]", "Combat")
    AddConversationOption(con, "[ Tradeskill ]", "Tradeskill")
    AddConversationOption(con, "[ Quests ]","Quests")
    AddConversationOption(con, "[ Player Housing ]","PlayerHouse")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
   StartDialogConversation(con, 1, NPC, Spawn, "Combat: Combat is under constant adjustment. Many areas still need attention, such as Heroic Opportunties, Rebuilding Classic spells, and balance passes.  Resistance rates for spells and expected melee output need continual tweaking.  The classic system has the fewest variables, and is currently the easiest to modify.\n\n NOTE: Character Stats are using the OLD system, where each stat is used by all characters (e.g. Scouts use Wisdom for resistance)")
end

function Tradeskill(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Zones ]", "Zones")
    AddConversationOption(con, "[ Combat ]", "Combat")
    AddConversationOption(con, "[ Tradeskill ]", "Tradeskill")
    AddConversationOption(con, "[ Quests ]","Quests")
    AddConversationOption(con, "[ Player Housing ]","PlayerHouse")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
   StartDialogConversation(con, 1, NPC, Spawn, "Tradeskill: Tradeskilling is not viable right now.  A Major update is in the works for Tradeskilling, so please hold on to bug reports until it is applied.  Advancement trainers in Freeport and Qeynos have been scripted and are ready once the systems have been updated.")
end 

function Quests(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Zones ]", "Zones")
    AddConversationOption(con, "[ Combat ]", "Combat")
    AddConversationOption(con, "[ Tradeskill ]", "Tradeskill")
    AddConversationOption(con, "[ Quests ]","Quests")
    AddConversationOption(con, "[ Player Housing ]","PlayerHouse")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
   StartDialogConversation(con, 1, NPC, Spawn, "Quests: Thousands of quests have been rebuilt, many by hand.  All Original Classic quests in Qeynos for T1 & T2 have been rebuilt, with the exception of faction writs and class training.  Citizenship requirements are in place for Qeynos Refugees.")
end  

function PlayerHouse(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Zones ]", "Zones")
    AddConversationOption(con, "[ Combat ]", "Combat")
    AddConversationOption(con, "[ Tradeskill ]", "Tradeskill")
    AddConversationOption(con, "[ Quests ]","Quests")
    AddConversationOption(con, "[ Player Housing ]","PlayerHouse")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
   StartDialogConversation(con, 1, NPC, Spawn, "Player Housing: A work in progress.  Currently, you can purchase a home in the major cities, but placing furniture does not work entirely.  Zoning out of a player home can be done with /zone ###.  Free Inn Rooms in Qeynos temporarily use the Bell system when leaving via the inn room door.")
end  
 
  function Bugs(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ Discord ]", "Discord")
    AddConversationOption(con, "[ Goal ]", "Goal")
    AddConversationOption(con, "[ Server Status ]", "CurrentStatus")
    AddConversationOption(con, "[ Content Status ]", "ContentStatus")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "Report Bugs:\n\nBug reporting is handled exclusively on the Discord Channels.\n\nPlease refer to [ Discord ] for the two actively used.")
 end   
 --[[
function Bugs(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ General Bugs ]", "GeneralBugs")
    AddConversationOption(con, "[ Combat Bugs ]", "CombatBugs")
    AddConversationOption(con, "[ Quest Bugs ]", "QuesttBugs")
    AddConversationOption(con, "[ Tradeskill Bugs ]", "TradeskillBugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "Bugs: Post new Bugs on the EQ2EMU Discord channel! \n\n The following are some major bugs known to the EMU team. There are more, and please feel free to share them on Discord.")
 end  
 ]]--
function CombatBugs(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ General Bugs ]", "GeneralBugs")
    AddConversationOption(con, "[ Combat Bugs ]", "CombatBugs")
    AddConversationOption(con, "[ Quest Bugs ]", "QuesttBugs")
    AddConversationOption(con, "[ Tradeskill Bugs ]", "TradeskillBugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "Combat Bugs:\n\n -Class changes do not apply appropriate skills. Result can cause some equipment to be unusable.\n\n -In-Combat regen for NPCs has spikes after initiating combat.\n\n -Heroic Opportunity Mechanic needs extreme attention.\n\n -Agro mechanics occasionally happen through walls.\n\n -Encounter-lock & Yell systems are not implemented.\n\n -Breath meter and In-Combat runspeed need attention.\n\n -Fighting aquatic targets near shore needs attention.\n\n -Damage immunity mechanics are not currently functional.")
 end
 
function QuesttBugs(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ General Bugs ]", "GeneralBugs")
    AddConversationOption(con, "[ Combat Bugs ]", "CombatBugs")
    AddConversationOption(con, "[ Quest Bugs ]", "QuesttBugs")
    AddConversationOption(con, "[ Tradeskill Bugs ]", "TradeskillBugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "Quest Bugs:\n\n -Non-deletable quests can currently be deleted. Function needs implementation.\n\n -Multiple Quest Offer Windows can occur and causes content flow issues.\n\n -Updating Current Zone is not behaving appropriately.\n\n -Not all currently active quests can be completed. Highlighting those will bring focus to them for later modification. ")
 end
 
function TradeskillBugs(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ General Bugs ]", "GeneralBugs")
    AddConversationOption(con, "[ Combat Bugs ]", "CombatBugs")
    AddConversationOption(con, "[ Quest Bugs ]", "QuesttBugs")
    AddConversationOption(con, "[ Tradeskill Bugs ]", "TradeskillBugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "Tradeskill Bugs:  Currently Tradeskilling is not in a working state, and a major work in progress. EmemJr has an update that will handle most of the existing crafting mechanics and will be released for testing when he deems it ready.")
 end
 
 function GeneralBugs(NPC,Spawn)
    local con = CreateConversation()
    AddConversationOption(con, "[ Main Menu ]", "MainMenu")
    AddConversationOption(con, "[ General Bugs ]", "GeneralBugs")
    AddConversationOption(con, "[ Combat Bugs ]", "CombatBugs")
    AddConversationOption(con, "[ Quest Bugs ]", "QuesttBugs")
    AddConversationOption(con, "[ Tradeskill Bugs ]", "TradeskillBugs")
    AddConversationOption(con, "[ Exit ]","CloseConvo")
    StartDialogConversation(con, 1, NPC, Spawn, "General Bugs:  - Banking system, from shared bank to stack management, needs attention.\n\n -Follow, Pet follow, and mob stacking are works in progress.\n\n -Waypoint system is very basic right now.\n\n -Location Point of Interest isn't completely implemented yet.\n\n -Achievements are not active.")
 end 