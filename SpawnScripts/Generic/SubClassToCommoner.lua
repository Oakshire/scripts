--[[
    Script Name    : SpawnScripts/Generic/SubClassToCommoner.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.11 04:09:45
    Script Purpose : For converting to a Commoner (naked) from a starting character's subclass.  Newer clients start as subclasses.
                   : 
--]]





function RemoveGear(NPC,player)
if HasItem(player,20903) then
    RemoveItem(player,20903,1)
end   
if HasItem(player,20921) then
    RemoveItem(player,20921,1)
end   
UnequipSlot(player,0)
UnequipSlot(player,1)  
UnequipSlot(player,3)  
UnequipSlot(player,6)  
UnequipSlot(player,7)  
UnequipSlot(player,8)  
UnequipSlot(player,16)  
UnequipSlot(player,17)  
UnequipSlot(player,20)  
UnequipSlot(player,22)  
UnequipSlot(player, 23) 


Qeynos = GetFactionAmount(player, 11)
Freeport = GetFactionAmount(player, 12)
Neriak = GetFactionAmount(player, 13)
Kelethin = GetFactionAmount(player, 14)
Halas = GetFactionAmount(player, 16)
Gorowyn = GetFactionAmount(player, 17)
alignment = GetAlignment(player)

if GetRace(player) == 0 or GetRace(player) == 3 or GetRace(player) == 5 or GetRace(player) == 6 or GetRace(player) == 9 or GetRace(player) == 11 or GetRace(player) == 20 then
SetAlignment(player, 2)
end

DeleteSpellBook(player, 6)


if Qeynos >0 then ChangeFaction(player, 11, -Qeynos)
    elseif Qeynos <0 then ChangeFaction(player, 11, (Qeynos*-1))
end
if Freeport >0 then ChangeFaction(player, 12, -Freeport)
    elseif Freeport <0 then ChangeFaction(player, 12, (Freeport*-1))
end
if Neriak >0 then ChangeFaction(player, 13, -Neriak)
    elseif Neriak <0 then ChangeFaction(player, 13, (Neriak*-1))
end
if Kelethin >0 then ChangeFaction(player, 14, -Kelethin)
    elseif Kelethin <0 then  ChangeFaction(player, 14, (Kelethin*-1))
end
if Halas >0 then ChangeFaction(player, 16, -Halas)
    elseif Halas <0 then ChangeFaction(player, 16, (Halas*-1))
end
if Gorowyn >0 then ChangeFaction(player, 17, -Gorowyn)
    elseif Gorowyn <0 then ChangeFaction(player, 17, (Gorowyn*-1))
end

--[[
Qfighters = GetFactionAmount(player,214)
Qpriests = GetFactionAmount(player,155)
Qscouts = GetFactionAmount(player, 243)
Qmages = GetFactionAmount(player, 136)

FPfighters = GetFactionAmount(player,102)
FPpriests = GetFactionAmount(player,105)
FPscouts = GetFactionAmount(player, 103)
FPmages = GetFactionAmount(player, 104)

if Qfighters >0 then ChangeFaction(player, 214, -Qfighters)
    else ChangeFaction(player, 214, (Qfighters*-1))
end
if Qpriests >0 then ChangeFaction(player, 155, -Qpriests)
    else ChangeFaction(player, 155, (Qpriests*-1))
end
if Qscouts >0 then ChangeFaction(player, 243, -Qscouts)
    else ChangeFaction(player, 243, (Qscouts*-1))
end
if Qmages >0 then ChangeFaction(player, 102, -Qmages)
    else ChangeFaction(player, 102, (Qmages*-1))
end
if FPfighters >0 then ChangeFaction(player, 16, -FPfighters)
    else ChangeFaction(player, 16, (FPfighters*-1))
end
if FPpriests >0 then ChangeFaction(player, 105, -FPpriests)
    else ChangeFaction(player, 105, (FPpriests*-1))
end
if FPscouts >0 then ChangeFaction(player, 103, -FPscouts)
    else ChangeFaction(player, 103, (FPscouts*-1))
end
if FPmages >0 then ChangeFaction(player, 104, -FPmages)
    else ChangeFaction(player, 104, (FPmages*-1))
end
]]--
AddTimer(NPC,500,"Removal",1,player)
AddTimer(NPC,1000,"SkillSwitch",1,player)
end

function Removal(NPC,player)
if HasItem(player,134899) then
    RemoveItem(player,134899,1)
end
if HasItem(player,71041) then
    RemoveItem(player,71041,1)
end
if HasItem(player,134900) then
    RemoveItem(player,134900,1)
end
if HasItem(player,134901) then
    RemoveItem(player,134901,1)
end
if HasItem(player,186964) then
    RemoveItem(player,186964,1)
end
if HasItem(player,89436) then
    RemoveItem(player,89436,1)
end
if HasItem(player,36211) then
    RemoveItem(player,36211,20)
end
if HasItem(player,144517) then
    RemoveItem(player,144517,1)
end
if HasItem(player,144516) then
    RemoveItem(player,144516,1)
end
if HasItem(player,184887) then
    RemoveItem(player,184887,1)
end
if HasItem(player,184889) then
    RemoveItem(player,184889,1)
end
if HasItem(player,184886) then
    RemoveItem(player,184886,1)
end
if HasItem(player,88905) then
    RemoveItem(player,88905,1)
end
if HasItem(player,154403) then
    RemoveItem(player,154403,1)
end
if HasItem(player,154402) then
    RemoveItem(player,154402,1)
end
if HasItem(player,154401) then
    RemoveItem(player,154401,1)
end
if HasItem(player,79258) then
    RemoveItem(player,79258,1)
end
if HasItem(player,160641) then
    RemoveItem(player,160641,1)
end
if HasItem(player,20921) then
    RemoveItem(player,20921,1)
end
if HasItem(player,160638) then
    RemoveItem(player,160638,1)
end
if HasItem(player,83260) then
    RemoveItem(player,83260,1)
end
if HasItem(player,189954) then
    RemoveItem(player,189954,1)
end
if HasItem(player,189955) then
    RemoveItem(player,189955,1)
end
if HasItem(player,189953) then
    RemoveItem(player,189953,1)
end
if HasItem(player,90087) then
    RemoveItem(player,90087,1)
end
if HasItem(player,139787) then
    RemoveItem(player,139787,1)
end
if HasItem(player,139788) then
    RemoveItem(player,139788,1)
end
if HasItem(player,139789) then
    RemoveItem(player,139789,1)
end
if HasItem(player,73251) then
    RemoveItem(player,73251,1)
end
if HasItem(player,158994) then
    RemoveItem(player,158994,1)
end
if HasItem(player,158995) then
    RemoveItem(player,158995,1)
end
if HasItem(player,158996) then
    RemoveItem(player,158996,1)
end
if HasItem(player,80159) then
    RemoveItem(player,80159,1)
end
if HasItem(player,164838) then
    RemoveItem(player,164838,1)
end
if HasItem(player,164839) then
    RemoveItem(player,164839,1)
end
if HasItem(player,164841) then
    RemoveItem(player,164841,1)
end
if HasItem(player,43203) then
    RemoveItem(player,43203,1)
end
if HasItem(player,84307) then
    RemoveItem(player,84307,1)
end
if HasItem(player,84307) then
    RemoveItem(player,84307,1)
end
if HasItem(player,20530) then
    RemoveItem(player,20530,1)
end
if HasItem(player,160639) then
    RemoveItem(player,160639,1)
end
if HasItem(player,86297) then
    RemoveItem(player,86297,1)
end
if HasItem(player,176518) then
    RemoveItem(player,176518,1)
end
if HasItem(player,176519) then
    RemoveItem(player,176519,1)
end
if HasItem(player,176520) then
    RemoveItem(player,176520,1)
end
if HasItem(player,54189) then
    RemoveItem(player,54189,1)
end
if HasItem(player,36684) then
    RemoveItem(player,36684,1)
end
if HasItem(player,157226) then
    RemoveItem(player,157226,1)
end
if HasItem(player,157229) then
    RemoveItem(player,157229,1)
end
if HasItem(player,157225) then
    RemoveItem(player,157225,1)
end
if HasItem(player,79782) then
    RemoveItem(player,79782,1)
end
if HasItem(player,52601) then
    RemoveItem(player,52601,1)
end
if HasItem(player,137308) then
    RemoveItem(player,137308,1)
end
if HasItem(player,137307) then
    RemoveItem(player,137307,1)
end
if HasItem(player,137306) then
    RemoveItem(player,137306,1)
end
if HasItem(player,40228) then
    RemoveItem(player,40228,1)
end
if HasItem(player,20538) then
    RemoveItem(player,20538,1)
end
if HasItem(player,72751) then
    RemoveItem(player,72751,1)
end
if HasItem(player,135223) then
    RemoveItem(player,135223,1)
end
if HasItem(player,135225) then
    RemoveItem(player,135225,1)
end
if HasItem(player,135227) then
    RemoveItem(player,135227,1)
end
if HasItem(player,71059) then
    RemoveItem(player,71059,1)
end
if HasItem(player,43528) then
    RemoveItem(player,43528,1)
end
if HasItem(player,20527) then
    RemoveItem(player,20527,1)
end
if HasItem(player,168902) then
    RemoveItem(player,168902,1)
end
if HasItem(player,168903) then
    RemoveItem(player,168903,1)
end
if HasItem(player,168904) then
    RemoveItem(player,168904,1)
end
if HasItem(player,85113) then
    RemoveItem(player,85113,1)
end
if HasItem(player,53700) then
    RemoveItem(player,53700,1)
end
if HasItem(player,144058) then
    RemoveItem(player,144058,1)
end
if HasItem(player,144059) then
    RemoveItem(player,144059,1)
end
if HasItem(player,144060) then
    RemoveItem(player,144060,1)
end
if HasItem(player,75400) then
    RemoveItem(player,75400,1)
end
if HasItem(player,165131) then
    RemoveItem(player,165131,1)
end
if HasItem(player,165132) then
    RemoveItem(player,165132,1)
end
if HasItem(player,165135) then
    RemoveItem(player,165135,1)
end
if HasItem(player,84347) then
    RemoveItem(player,84347,1)
end
if HasItem(player,191144) then
    RemoveItem(player,191144,1)
end
if HasItem(player,191145) then
    RemoveItem(player,191145,1)
end
if HasItem(player,191146) then
    RemoveItem(player,191146,1)
end
if HasItem(player,90320) then
    RemoveItem(player,90320,1)
end
if HasItem(player,165457) then
    RemoveItem(player,165457,1)
end
if HasItem(player,84367) then
    RemoveItem(player,84367,1)
end
if HasItem(player,189973) then
    RemoveItem(player,189973,1)
end
if HasItem(player,189974) then
    RemoveItem(player,189974,1)
end
if HasItem(player,189975) then
    RemoveItem(player,189975,1)
end
if HasItem(player,90096) then
    RemoveItem(player,90096,1)
end
if HasItem(player,140141) then
    RemoveItem(player,140141,1)
end
if HasItem(player,140142) then
    RemoveItem(player,140142,1)
end
if HasItem(player,140143) then
    RemoveItem(player,140143,1)
end
if HasItem(player,73663) then
    RemoveItem(player,73663,1)
end
if HasItem(player,183463) then
    RemoveItem(player,183463,1)
end
if HasItem(player,183464) then
    RemoveItem(player,183464,1)
end
if HasItem(player,183465) then
    RemoveItem(player,183465,1)
end
if HasItem(player,88681) then
    RemoveItem(player,88681,1)
end
if HasItem(player,43534) then
    RemoveItem(player,43534,1)
end
if HasItem(player,20535) then
    RemoveItem(player,20535,1)
end
if HasItem(player,75509) then
    RemoveItem(player,75509,1)
end
if HasItem(player,43528) then
    RemoveItem(player,43528,1)
end
if HasItem(player,43528) then
    RemoveItem(player,43528,1)
end
if HasItem(player,20527) then
    RemoveItem(player,20527,1)
end
if HasItem(player,133757) then
    RemoveItem(player,133757,1)
end
if HasItem(player,133760) then
    RemoveItem(player,133760,1)
end
if HasItem(player,133761) then
    RemoveItem(player,133761,1)
end
if HasItem(player,70875) then
    RemoveItem(player,70875,1)
end
if HasItem(player,40189) then
    RemoveItem(player,40189,1)
end
if HasItem(player,20527) then
    RemoveItem(player,20527,1)
end
if HasItem(player,47635) then
    RemoveItem(player,47635,1)
end
if HasItem(player,47836) then
    RemoveItem(player,47836,1)
end
if HasItem(player,137128) then
    RemoveItem(player,137128,1)
end
if HasItem(player,137129) then
    RemoveItem(player,137129,1)
end
if HasItem(player,137130) then
    RemoveItem(player,137130,1)
end
if HasItem(player,72648) then
    RemoveItem(player,72648,1)
end
if HasItem(player,172484) then
    RemoveItem(player,172484,1)
end
if HasItem(player,172486) then
    RemoveItem(player,172486,1)
end
if HasItem(player,172487) then
    RemoveItem(player,172487,1)
end
if HasItem(player,85697) then
    RemoveItem(player,85697,1)
end
if HasItem(player,42288) then
    RemoveItem(player,42288,1)
end

end

function SkillSwitch(NPC,player)
if HasSkill(player, 366253016) then --Ministration
    RemoveSkill(player, 366253016)
end
if HasSkill(player, 613995491) then -- Disruption
    RemoveSkill(player, 613995491)
end
if HasSkill(player, 882983852) then -- Subjigation
    RemoveSkill(player, 882983852)
end
if HasSkill(player, 3587918036) then -- Ordination
    RemoveSkill(player, 3587918036)
end
if HasSkill(player, 2638198038) then -- Focus
    RemoveSkill(player, 2638198038)
end
if HasSkill(player, 723762198) then -- Aggression
    RemoveSkill(player, 723762198)
end
if HasSkill(player, 540022425) then -- Parry
    RemoveSkill(player, 540022425)
end
if HasSkill(player, 1852383242) then -- Dual Wield
    RemoveSkill(player, 1852383242)
end
if HasSkill(player, 3421494576) then -- Crushing
    RemoveSkill(player, 3421494576)
end
if HasSkill(player, 1756482397) then -- Ranged
    RemoveSkill(player, 1756482397)
end
if HasSkill(player, 3048574950) then -- Piercing
    RemoveSkill(player, 3048574950)
end
if HasSkill(player, 418532101) then -- Slashing
    RemoveSkill(player, 418532101)
end
if HasSkill(player, 1553857724) then -- Investigation
    RemoveSkill(player, 1553857724)
end


--Fighter
if HasSkill(player, 1408356869) then -- Martial/Fighter
    RemoveSkill(player, 1408356869)
end
if HasSkill(player, 1124719197) then -- Tactics/Warrior
    RemoveSkill(player, 1124719197)
end
if HasSkill(player, 433335062) then -- Berserk/Berserker
    RemoveSkill(player, 433335062)
end
if HasSkill(player, 1209716810) then -- Protection/Guardian
    RemoveSkill(player, 1209716810)
end
if HasSkill(player, 3856706740) then -- Brawl/Brawling
    RemoveSkill(player, 3856706740)
end
if HasSkill(player, 2011726342) then -- Tranquility/Monk
    RemoveSkill(player, 2011726342)
end
if HasSkill(player, 3067436248) then -- Physicality/Bruiser
    RemoveSkill(player, 3067436248)
end
if HasSkill(player, 3809066846) then -- Faith/Crusader
    RemoveSkill(player, 3809066846)
end
if HasSkill(player, 90523872) then -- Determined Faith/Paladin
    RemoveSkill(player, 90523872)
end
if HasSkill(player, 2741805322) then -- Determined Zeal/Shadowknight
    RemoveSkill(player, 2741805322)
end

--Scout
if HasSkill(player, 1921433074) then -- Reconnaissance/Scout
    RemoveSkill(player, 1921433074)
end
if HasSkill(player, 1311635100) then -- Melodies/Bard
    RemoveSkill(player, 1311635100)
end
if HasSkill(player, 296246391) then -- Ballads/Troubador
    RemoveSkill(player, 296246391)
end
if HasSkill(player, 340921594) then -- Dirges/Dirge
    RemoveSkill(player, 340921594)
end
if HasSkill(player, 1514256692) then -- Skulldugery/Rogue
    RemoveSkill(player, 1514256692)
end
if HasSkill(player, 2663054519) then -- Swashbuckling/Swashbuckler
    RemoveSkill(player, 2663054519)
end
if HasSkill(player, 1519965519) then -- Banditry/Brigand
    RemoveSkill(player, 1519965519)
end
if HasSkill(player, 3167106577) then -- Stalking/Predator
    RemoveSkill(player, 3167106577)
end
if HasSkill(player, 1400160844) then -- Archery/Ranger
    RemoveSkill(player, 1400160844)
end
if HasSkill(player, 2711101135) then -- Assassination/Assassin
    RemoveSkill(player, 2711101135)
end

--Priest
if HasSkill(player, 2463145248) then -- Inspirations/Priest
    RemoveSkill(player, 2463145248)
end
if HasSkill(player, 3341842907) then -- Theurgy/Cleric
    RemoveSkill(player, 3341842907)
end
if HasSkill(player, 2581053277) then -- Regimens/Templar
    RemoveSkill(player, 2581053277)
end
if HasSkill(player, 1829443087) then -- Inquisitions/Inquisitor
    RemoveSkill(player, 1829443087)
end
if HasSkill(player, 3282420779) then -- Archegenesis/Druid
    RemoveSkill(player, 3282420779)
end
if HasSkill(player, 1624274802) then -- Nature's Reckoning/Fury
    RemoveSkill(player, 1624274802)
end
if HasSkill(player, 1040683335) then -- Nature's Refuge/Warden
    RemoveSkill(player, 1040683335)
end
if HasSkill(player, 3343700951) then -- Talismans/Shaman
    RemoveSkill(player, 3343700951)
end
if HasSkill(player, 3467160477) then -- Fetichisms/Mystic
    RemoveSkill(player, 3467160477)
end
if HasSkill(player, 3191839982) then -- Vehemence/Defiler
    RemoveSkill(player, 3191839982)
end

--Mage
if HasSkill(player, 3820670534) then -- Evocations/Mage
    RemoveSkill(player, 3820670534)
end
if HasSkill(player, 287643040) then -- Enchantments/Enchanter
    RemoveSkill(player, 287643040)
end
if HasSkill(player, 2898101972) then -- Hallucinations/Illusionist
    RemoveSkill(player, 2898101972)
end
if HasSkill(player, 2950599749) then -- Protean/Coecerer
    RemoveSkill(player, 2950599749)
end
if HasSkill(player, 2533124061) then -- Sorcery/Sorcerer
    RemoveSkill(player, 2533124061)
end
if HasSkill(player, 2662430630) then -- Elemental Mastery/Wizard
    RemoveSkill(player, 2662430630)
end
if HasSkill(player, 193411854) then -- Noctivagance/Warlock
    RemoveSkill(player, 193411854)
end
if HasSkill(player, 2120065377) then -- Legerdemain/Summoner
    RemoveSkill(player, 2120065377)
end
if HasSkill(player, 2042842194) then -- Conjurations/Conjurer
    RemoveSkill(player, 2042842194)
end
if HasSkill(player, 289471519) then -- Sepulchers/Necromancer
    RemoveSkill(player, 289471519)
end

if HasSkill(player, 887279616) then -- Dagger
    RemoveSkill(player, 887279616)
end
if HasSkill(player, 1696217328) then -- Sword
    RemoveSkill(player, 1696217328)
end
if HasSkill(player, 2476073427) then -- Axe
    RemoveSkill(player, 2476073427)
end
if HasSkill(player, 2954459351) then -- Great Axe
    RemoveSkill(player, 2954459351)
end
if HasSkill(player, 2292577688) then -- Great Sword
    RemoveSkill(player, 2292577688)
end
if HasSkill(player, 1653482350) then -- Great Hammer
    RemoveSkill(player, 1653482350)
end
if HasSkill(player, 1653482350) then -- Great Spear
    RemoveSkill(player, 1653482350)
end
if HasSkill(player, 1616998748) then -- Spear
    RemoveSkill(player, 1616998748)
end
if HasSkill(player, 554333641) then -- Hammer
    RemoveSkill(player, 554333641)
end
if HasSkill(player, 1743366740) then -- Bow
    RemoveSkill(player, 1743366740)
end
if HasSkill(player, 2650425026) then -- Thrown Weapon
    RemoveSkill(player, 2650425026)
end
if HasSkill(player, 4037812502) then -- Buckler
    RemoveSkill(player, 4037812502)
end
if HasSkill(player, 3173504370) then -- Roundshield
    RemoveSkill(player, 3173504370)
end
if HasSkill(player, 2608320658) then -- Kite Shield
    RemoveSkill(player, 2608320658)
end
if HasSkill(player, 570458645) then -- Tower Shield
    RemoveSkill(player, 570458645)
end



if HasSkill(player, 609880714) then -- Defense
    RemoveSkill(player, 609880714)
end
if HasSkill(player, 540022425) then -- Parry
    RemoveSkill(player, 540022425)
end
if HasSkill(player, 2897193374) then -- Light Armor
    RemoveSkill(player, 2897193374)
end
if HasSkill(player, 2246237129) then -- Medium Armor
    RemoveSkill(player, 2246237129)
end
if HasSkill(player, 241174330) then -- Heavy Armor
    RemoveSkill(player, 241174330)
end



if HasSkill(player, 3659699625) then -- Mining
    RemoveSkill(player, 3659699625)
end
if HasSkill(player, 688591146) then -- Foresting
    RemoveSkill(player, 688591146)
end
if HasSkill(player, 1048513601) then -- Gathering
    RemoveSkill(player, 1048513601)
end
if HasSkill(player, 4158365743) then -- Trapping
    RemoveSkill(player, 4158365743)
end
if HasSkill(player, 2319450178) then -- Fishing
    RemoveSkill(player, 2319450178)
end
if HasSkill(player, 1970131346) then -- Transmuting
    RemoveSkill(player, 1970131346)
end
if HasSkill(player, 3429135390) then -- Mystical Destruction
    RemoveSkill(player, 3429135390)
end


--COMMONER GAINED SKILLS
if not HasSkill(player, 2072844078) then -- Magic Affinity
    AddSkill(player, 2072844078,1,5)
end
if not HasSkill(player, 3539032716) then -- Very Light Armor
    AddSkill(player, 3539032716,1,5)
end
if not HasSkill(player, 2383540775) then -- Spell Avoidance
    AddSkill(player, 2383540775,30,30)
end
if not HasSkill(player, 609880714) then -- Defense
    AddSkill(player, 609880714,30,30)
end

end



