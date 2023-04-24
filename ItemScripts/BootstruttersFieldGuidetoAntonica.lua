--[[
    Script Name    : ItemScripts/BootstruttersFieldGuidetoAntonica.lua
    Script Author  : Dorbin
    Script Date    : 2023.04.22 10:04:48
    Script Purpose : 
                   : 
--]]

local Bootstrutter = 5806

function examined(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry One","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Antonica was once called Qeynos Hills. It was renamed Antonica after the Age of Cataclysms left the former continent of Antonica divided into islands. This land is part of the territory claimed as the Kingdom of Qeynos.")
end

function Page1(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Two","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Crater Pond:\n\nThis is a shallow pond. A meteor of large size impacted and created this crater that is now filled with inviting clear cool water. Do not be deceived traveler. This water is toxic allowing only the rarest of aquatic life to exist in its embrace. I waded through the water to reach the rock from the sky in the middle: a chunk of Luclin!")
end

function Page2(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Three","Page3")
AddConversationOption(conversation, "Turn back to previous entry.","Page1")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Coldwind Point:\n\n This is an isle resting just off the Southwest tip of Antonica. Upon this isle, the Lamp of Prexus acts as a beacon to warn ships of the dangerous crags that lurk beneath the water's surface. This lighthouse is a safe haven for those caught beyond the walls of Qeynos during thunderstorms.")
end

function Page3(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Four","Page4")
AddConversationOption(conversation, "Turn back to previous entry.","Page2")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Fippy's Hill:\n\n This is an often gnoll-infested hill near the Qeynos gates. A gnoll by the name of Fippy Darkpaw used to climb atop this hill to plot out his next storming of the Qeynos Gates. Gnolls usually pitch camp up here to spy on the Qeynosians. They are frequently chased from this hill only to return.")
end

function Page4(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Five","Page5")
AddConversationOption(conversation, "Turn back to previous entry.","Page3")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Forbidden Isle:\n\n This isle is far from forbidden any longer. It contains the ruins of a mausoleum that belonged to an evil mage who was placed in this warded mausoleum, Varsoon the Undying. The wards were to hold his soul for eternity, but a meteor shower breached the walls and released the evil.")
end

function Page5(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Six","Page6")
AddConversationOption(conversation, "Turn back to previous entry.","Page4")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Keep of the Ardent Needle:\n\n This is the refurbished keep of what was the grand citadel of the Clothspinners of Qeynos. They made their fortune in textiles and built this magnificent keep in the outskirts of the Qeynos Hills. As with many of the dreams of Old Antonica, the falling skies of the Shattering put an end to it. Lord Quinn Clothspinner has begun to rebuild his ancestor's estate, but his distaste for visitors makes this a place better left off the traveler's itinerary.")
end

function Page6(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Seven","Page7")
AddConversationOption(conversation, "Turn back to previous entry.","Page5")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Tower of the Oracles:\n\n This spire is unrivaled in Antonica. One look tells you that arcane inhabitants are present. This is the residence of the Coldwind Oracles. It was difficult to arrange a meeting with these mages. They prefer that their activities remain clandestine, and we dare not delve into their mysteries.")
end

function Page7(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Eight","Page8")
AddConversationOption(conversation, "Turn back to previous entry.","Page6")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Qeynos Hill:\n\n It is said that this is the hill that the Qeynos Claymore was wielded to repel an evil avatar in the War of Plagues. A replica of the Qeynos Claymore monument found in Qeynos was built here as well. On days of remembrance of past battles, Qeynosians come here to praise the fallen.")
end

function Page8(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Nine","Page9")
AddConversationOption(conversation, "Turn back to previous entry.","Page7")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Archer Woods, The Glade:\n\n This little thicket was once the training ground of early bowman. Rumor has it that the legendary Holly Windstalker honed her skills here as well, marking one tree with her secret symbol. This place is now the occasional training ground for the elite division of the Qeynos Guard known as the Green Hoods. But beware all who enter ... the local gnolls now claim these woods.")
end

function Page9(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Ten","Page10")
AddConversationOption(conversation, "Turn back to previous entry.","Page8")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Bells of Vhalen:\n\n This was a region-wide signal device designed by a legendary bard named Vhalen. The tower was destroyed during the War of Plagues when Vhalen used it to not only warn the entire region of invasion but played some of the largest bard spells ever composed. Here he fell to a horde, hands still tugging at the bells to the end.")
end

function Page10(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Eleven","Page11")
AddConversationOption(conversation, "Turn back to previous entry.","Page9")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Keep of the Gnollslayers:\n\n This ruin is all that remains of the keep that once held the Order of Gnollslayers, a band of knights dedicated to patrolling the borders of Qeynos and slaying all gnolls. It is rumored that their leader, Lord Hefax Tinmar, buried the magical Sabertooth sword near here. I searched in vain.")
end

function Page11(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Twelve","Page12")
AddConversationOption(conversation, "Turn back to previous entry.","Page10")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Fangbreaker Keep:\n\n As with most keeps in the region, this is nothing but ruins. The werewolf hunting Order of the Fangbreakers was once based here. They once rid the Plains of Karana of its werewolves in the Age of Turmoil. Tales tell of a horde of werewolves slaying the entire order on this spot. The merchant lords of Caltorsis were quick to purchase the deed. An odd act considering they were at odds with the order for quite some time.")
end

function Page12(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Thirteen","Page13")
AddConversationOption(conversation, "Turn back to previous entry.","Page11")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Ruins of Caltorsis:\n\n Caltorsis was once a small port and keep established to service the watch of the northern coastline. Mere seasons after the beginning of the Age of Destiny the knights of Caltorsis were all slain in a battle with pirates invading the shoreline. All that remains is the crumbling keep.")
end

function Page13(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Fourteen","Page14")
AddConversationOption(conversation, "Turn back to previous entry.","Page12")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Grave of Windstalker:\n\n This gravesite overlooks the serene village of Windstalker Pond. Here rests the remains of one of the most revered and feared rangers of the Age of Turmoil, Holly Windstalker. Many rangers regard this as a sacred place imbued with magical powers.")
end

function Page14(Item, Player)
conversation = CreateConversation()
AddConversationOption(conversation, "Entry Fifteen","Page15")
AddConversationOption(conversation, "Turn back to previous entry.","Page13")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "The Hidden Vale:\n\n This isolated place of green grandeur is unknown to most Antonicans. I happened upon the narrow passage leading to the secret vale within the Doghold Mountains. A very curious thing--my first visit I noted an obelisk in the vale, and on my second return it was not to be found! Perhaps I should sip less Clockwork Oil Stout.")
end


function Page15(Item, Player)
conversation = CreateConversation()
if not HasQuest(Spawn,Bootstrutter) and not HasCompletedQuest(Spawn,Bootstrutter)then
AddConversationOption(conversation, "Write down these locations in your journal","QuestStart")
end
AddConversationOption(conversation, "Turn back to previous entry.","Page14")
AddConversationOption(conversation, "Close the book.","CloseItemConversation")
StartDialogConversation(conversation, 2, Item, Player, "Stormhold:\n\n The grand entryway has been found! There I stood gazing at the sinking grandeur of what was once a marble entryway to the lost fortress called Stormhold. The sprawling underground bunker is rumored to be littered with jewels and artifacts, but beware... the evil that befell the Knights of Thunder that dwelt there still lurks in the dark bowels of Stormhold.")
end




function QuestStart(Item,Player)
	    CloseItemConversation(Item,Player)
		OfferQuest(nil, Player, Bootstrutter)
end

