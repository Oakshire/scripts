--[[
    Script Name    : ItemScripts/EnchanterCertificationPapers.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.15 04:06:36
    Script Purpose : 
                   : 
--]]
local Quest = 5851


function examined(Item, Player)
conversation = CreateConversation()

    if GetClass(Player)==0 or GetClass(Player)==21 then
    AddConversationOption(conversation, "[Glance over the forms]","Intro")
    end
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "[Turn in these papers for gear]","QuestStart")
    end
    AddConversationOption(conversation, "[Put the certificate away]","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This certificate would make you a \"Enchanter\" if you signed it and are a Commoner or Priest.\n\nTHIS ACTION IS FINAL!\n\nRead further if you wish to become a Enchanter.")
end

function Intro(Item, Player)
    conversation = CreateConversation()
    AddConversationOption(conversation, ""..GetName(Player).." the Enchanter","Class")
    AddConversationOption(conversation, "[Put the certificate away]","CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "-- OFFICIAL DOCUMENT --\n\n I, "..GetName(Player)..", am a Enchanter as proof by trainer [illegible scribbles].\n\nSigned,")
end


function Class(Item, Player)
    conversation = CreateConversation()
    if CanReceiveQuest(Player,Quest) then
    AddConversationOption(conversation, "[Turn in these papers for gear]","QuestStart")
    end
    AddConversationOption(conversation, "[Put the signed certificate away]","TaskDone")
    StartDialogConversation(conversation, 2, Item, Player, "You are now known as \n\n"..GetName(Player).." the Enchanter.")
 	if GetClass(Player)== 21 or GetClass(Player)== 0 then
    SetAdventureClass(Player,25)   
   local level = GetLevel(Player)*5


--WEAPON SKILLS
if not HasSkill(Player, 3820670534) then -- Evocations/Mage
    AddSkill(Player, 3820670534,1,level)
    SendMessage(Player, "You have learned the Evocations skill")
end
if not HasSkill(Player, 287643040) then -- Enchantments/Enchanter
    AddSkill(Player, 287643040,1,level)
    SendMessage(Player, "You have learned the Enchantments skill")
end
if not HasSkill(Player, 3421494576) then -- Crushing
    AddSkill(Player, 3421494576,1,level)
    SendMessage(Player, "You have learned the Crushing skill")
end
if not HasSkill(Player, 3048574950) then -- Piercing
    AddSkill(Player, 3048574950,1,level)
    SendMessage(Player,  "You have learned the Piercing skill")
end
--CASTING SKILLS
if not HasSkill(Player, 613995491) then -- Disruption
    AddSkill(Player, 613995491,1,level)
    SendMessage(Player, "You have learned the Disruption skill")
end
if not HasSkill(Player, 366253016) then -- Ministration
    AddSkill(Player, 366253016,1,level)
    SendMessage(Player, "You have learned the Ministration skill")
end
if not HasSkill(Player, 3587918036) then -- Ordination
    AddSkill(Player, 3587918036,1,level)
    SendMessage(Player, "You have learned the Ordination skill")
end
if not HasSkill(Player, 882983852) then -- Subjugation
    AddSkill(Player, 882983852,1,level)
    SendMessage(Player, "You have learned the Subjugation skill")
end
if not HasSkill(Player, 2638198038) then -- Focus
    AddSkill(Player, 2638198038,1,level)
    SendMessage(Player, "You have learned the Focus skill")
end

--WEAPON SKILLS
if not HasSkill(Player, 545043066) then -- Symbol
    AddSkill(Player, 545043066,1,level)
    SendMessage(Player, "You are now more proficient with a Symbol")
end
if not HasSkill(Player, 887279616) then -- Dagger
    AddSkill(Player, 887279616,1,level)
    SendMessage(Player, "You are now more proficient with a Dagger")
end
if not HasSkill(Player, 3180399725) then -- Staff(2h)
    AddSkill(Player, 3180399725,1,level)
   SendMessage(Player, "You are now more proficient with a Staff")
end

--REMOVE SKILLS
-- Removed Fighter
if HasSkill(Player, 1408356869) then -- Martial/Fighter
    RemoveSkill(Player, 1408356869)
end
if HasSkill(Player, 1124719197) then -- Tactics/Warrior
    RemoveSkill(Player, 1124719197)
end
if HasSkill(Player, 433335062) then -- Berserk/Berserker
    RemoveSkill(Player, 433335062)
end
if HasSkill(Player, 1209716810) then -- Protection/Guardian
    RemoveSkill(Player, 1209716810)
end
if HasSkill(Player, 3856706740) then -- Brawl/Brawling
    RemoveSkill(Player, 3856706740)
end
if HasSkill(Player, 2011726342) then -- Tranquility/Monk
    RemoveSkill(Player, 2011726342)
end
if HasSkill(Player, 3067436248) then -- Physicality/Bruiser
    RemoveSkill(Player, 3067436248)
end
if HasSkill(Player, 3809066846) then -- Faith/Crusader
    RemoveSkill(Player, 3809066846)
end
if HasSkill(Player, 90523872) then -- Determined Faith/Paladin
    RemoveSkill(Player, 90523872)
end
if HasSkill(Player, 2741805322) then -- Determined Zeal/Shadowknight
    RemoveSkill(Player, 2741805322)
end

--Removed Scout
if HasSkill(Player, 1921433074) then -- Reconnaissance/Scout
    RemoveSkill(Player, 1921433074)
end
if HasSkill(Player, 1311635100) then -- Melodies/Bard
    RemoveSkill(Player, 1311635100)
end
if HasSkill(Player, 296246391) then -- Ballads/Troubador
    RemoveSkill(Player, 296246391)
end
if HasSkill(Player, 340921594) then -- Dirges/Dirge
    RemoveSkill(Player, 340921594)
end
if HasSkill(Player, 1514256692) then -- Skulldugery/Rogue
    RemoveSkill(Player, 1514256692)
end
if HasSkill(Player, 3167106577) then -- Stalking/Predator
    RemoveSkill(Player, 3167106577)
end
if HasSkill(Player, 2663054519) then -- Swashbuckling/Swashbuckler
    RemoveSkill(Player, 2663054519)
end
if HasSkill(Player, 1519965519) then -- Banditry/Brigand
    RemoveSkill(Player, 1519965519)
end
if HasSkill(Player, 1400160844) then -- Archery/Ranger
    RemoveSkill(Player, 1400160844)
end
if HasSkill(Player, 2711101135) then -- Assassination/Assassin
    RemoveSkill(Player, 2711101135)
end

--Removed Priest
if HasSkill(Player, 2463145248) then -- Inspirations/Priest
    RemoveSkill(Player, 2463145248)
end
if HasSkill(Player, 3341842907) then -- Theurgy/Cleric
    RemoveSkill(Player, 3341842907)
end
if HasSkill(Player, 2581053277) then -- Regimens/Templar
    RemoveSkill(Player, 2581053277)
end
if HasSkill(Player, 1829443087) then -- Inquisitions/Inquisitor
    RemoveSkill(Player, 1829443087)
end
if HasSkill(Player, 3282420779) then -- Archegenesis/Druid
    RemoveSkill(Player, 3282420779)
end
if HasSkill(Player, 1624274802) then -- Nature's Reckoning/Fury
    RemoveSkill(Player, 1624274802)
end
if HasSkill(Player, 1040683335) then -- Nature's Refuge/Warden
    RemoveSkill(Player, 1040683335)
end
if HasSkill(Player, 3467160477) then -- Fetichisms/Mystic
    RemoveSkill(Player, 3467160477)
end
if HasSkill(Player, 3191839982) then -- Vehemence/Defiler
    RemoveSkill(Player, 3191839982)
end

--Removed Mage

if HasSkill(Player, 2898101972) then -- Hallucinations/Illusionist
    RemoveSkill(Player, 2898101972)
end
if HasSkill(Player, 2950599749) then -- Protean/Coecerer
    RemoveSkill(Player, 2950599749)
end
if HasSkill(Player, 2533124061) then -- Sorcery/Sorcerer
    RemoveSkill(Player, 2533124061)
end
if HasSkill(Player, 2662430630) then -- Elemental Mastery/Wizard
    RemoveSkill(Player, 2662430630)
end
if HasSkill(Player, 193411854) then -- Noctivagance/Warlock
    RemoveSkill(Player, 193411854)
end
if HasSkill(Player, 2120065377) then -- Legerdemain/Summoner
    RemoveSkill(Player, 2120065377)
end
if HasSkill(Player, 2042842194) then -- Conjurations/Conjurer
    RemoveSkill(Player, 2042842194)
end
if HasSkill(Player, 289471519) then -- Sepulchers/Necromancer
    RemoveSkill(Player, 289471519)
end

--REMOVE WEAPON
if HasSkill(Player, 2246237129) then -- Medium Armor
    RemoveSkill(Player, 2246237129)
end
if HasSkill(Player, 241174330) then -- Heavy Armor
    RemoveSkill(Player, 241174330)
end
if HasSkill(Player, 770311065) then -- Mace
    RemoveSkill(Player, 770311065)
end
if HasSkill(Player, 3177806075) then -- Fists
    RemoveSkill(Player, 3177806075)
end
if HasSkill(Player, 1696217328) then -- Sword
    RemoveSkill(Player, 1696217328)
end
if HasSkill(Player, 2292577688) then -- Great Sword
    RemoveSkill(Player, 2292577688)
end
if HasSkill(Player, 2292577688) then -- Great Sword
    RemoveSkill(Player, 2292577688)
end
if HasSkill(Player, 2954459351) then -- Great Axe
    RemoveSkill(Player, 2954459351)
end
if HasSkill(Player, 1653482350) then -- Great Spear
    RemoveSkill(Player, 1653482350)
end
if HasSkill(Player, 3173504370) then -- Round Shield
    RemoveSkill(Player, 3173504370)
end
if HasSkill(Player, 2608320658) then -- Kite Shield
    RemoveSkill(Player, 2608320658)
end
if HasSkill(Player, 570458645) then -- Tower Shield
    RemoveSkill(Player, 570458645)
end
if  HasSkill(Player, 545043066) then -- Symbol
    RemoveSkill(Player, 545043066)
end
if HasSkill(Player, 4037812502) then -- Buckler
    RemoveSkill(Player, 4037812502)
end

    SendMessage(Player, "Congratulations! You are a Enchanter.","yellow")
    SendPopUpMessage(Player, "Congratulations! You are a Enchanter.",250,250,200)
    ApplySpellVisual(Player, 324)
    PlaySound(Player, "sounds/test/endquest.wav", GetX(Player), GetY(Player), GetZ(Player), Player)
    SetPlayerLevel(Player,10)
end
end

function QuestStart(Item,Player)
    OfferQuest(nil,Player,Quest)
    conversation = CreateConversation()
    AddConversationOption(conversation, "[Put the signed certificate away]","TaskDone")
    StartDialogConversation(conversation, 2, Item, Player, "The Shady Swashbuckler might have some gear I can use...")    
end

function TaskDone(Item,Player)
CloseItemConversation(Item,Player)
if HasItem(Player,1001105) then
    RemoveItem(Player,1001105,1)
    end
end