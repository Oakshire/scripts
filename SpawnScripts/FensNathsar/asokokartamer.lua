--[[
	Script Name	: SpawnScripts/FensNathsar/asokokartamer.lua
	Script Purpose	: a stable master (2640003)
	Script Author	: Neatz09
	Script Date	: 4/15/2019
	Script Notes	: 
--]]

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1042.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I would like to travel.", "dlg_1_1")
		AddConversationOption(conversation, "Nowhere.")
		StartConversation(conversation, NPC, Spawn, "Greetings traveler, how can I assist you today?")
	end
	
function dlg_1_1(NPC, Spawn)
    local con = CreateConversation()
    
	if GetSpawnLocationID(NPC) == 259318	 then
		--Riliss--
		AddConversationOption(con, "To Atrebe's Laboratory", "RilToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "RilToBathezid")
		AddConversationOption(con, "To Bellywumper Burrows.", "RilToBurrow")
		AddConversationOption(con, "To Dragon's Rest.", "RilToDragon")
		AddConversationOption(con, "To Drogan Exiles.", "RilToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "RilToEast")
		AddConversationOption(con, "To Kylong Plains.", "RilToKylong")
		AddConversationOption(con, "To Omen's Call.", "RilToOmen")
		AddConversationOption(con, "To Ruins of Cabilis.", "RilToCab")
		AddConversationOption(con, "To Sathir's Span.", "RilToSpan")
		AddConversationOption(con, "To Western Pens.", "RilToWest")
	elseif GetSpawnLocationID(NPC) == 259322 then
		--Omen's Call--
	    AddConversationOption(con, "To Atrebe's Laboratory.", "OmenToAtrebe")
	    AddConversationOption(con, "To Bathezid's Watch.", "OmenToBathezid")
	    AddConversationOption(con, "To Bellywumper Burrows.", "OmenToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "OmenToDragon")
		AddConversationOption(con, "To Drogan Exiles.", "OmenToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "OmenToEast")
		AddConversationOption(con, "To Kylong Plains.", "OmenToKylong")
		AddConversationOption(con, "To Riliss.", "OmenToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "OmenToCab")
		AddConversationOption(con, "To Sathir's Span.", "OmenToSpan")
		AddConversationOption(con, "To Western Pens.", "OmenToWest")
	elseif GetSpawnLocationID(NPC) == 259324 then
		--Atrebe's Laboratory--
		AddConversationOption(con, "To Bathezid's Watch.", "AtrebeToBathezid")
	    AddConversationOption(con, "To Bellywumper Burrows.", "AtrebeToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "AtrebeToDragon")
	    AddConversationOption(con, "To Drogan Exiles.", "AtrebeToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "AtrebeToEast")
		AddConversationOption(con, "To Kylong Plains.", "AtrebeToKylong")
		AddConversationOption(con, "To Omen's Call.", "AtrebeToOmen")
		AddConversationOption(con, "To Riliss.", "AtrebeToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "AtrebeToCab")
		AddConversationOption(con, "To Sathir's Span.", "AtrebeToSpan")
		AddConversationOption(con, "To Western Pens.", "AtrebeToWest")
	elseif GetSpawnLocationID(NPC) == 259316 then
		--Bellywumper Burrows--
	    AddConversationOption(con, "To Atrebe's Laboratory.", "BurrowToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "BurrowToBathezid")
	    AddConversationOption(con, "To Dragon's Rest.", "BurrowToDragon")
	    AddConversationOption(con, "To Drogan Exiles.", "BurrowToDrogan")
	    AddConversationOption(con, "To Eastern Pens.", "BurrowToEast")
		AddConversationOption(con, "To Kylong Plains.", "BurrowToKylong")
		AddConversationOption(con, "To Omen's Call.", "BurrowToOmen")
		AddConversationOption(con, "To Riliss.", "BurrowToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "BurrowToCab")
		AddConversationOption(con, "To Sathir's Span.", "BurrowToSpan")
		AddConversationOption(con, "To Western Pens.", "BurrowToWest")
	elseif GetSpawnLocationID(NPC) == 259319 then
		--Drogan Exiles--
		AddConversationOption(con, "To Atrebe's Laboratory.", "DroganToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "DroganToBathezid")
		AddConversationOption(con, "To Bellywumper Burrows.", "DroganToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "DroganToDragon")
	    AddConversationOption(con, "To Eastern Pens.", "DroganToEast")
		AddConversationOption(con, "To Kylong Plains.", "DroganToKylong")
		AddConversationOption(con, "To Omen's Call.", "DroganToOmen")
		AddConversationOption(con, "To Riliss.", "DroganToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "DroganToCab")
		AddConversationOption(con, "To Sathir's Span.", "DroganToSpan")
		AddConversationOption(con, "To Western Pens.", "DroganToWest")
	elseif GetSpawnLocationID(NPC) == 259323 then
		--Kylong Plains--
		AddConversationOption(con, "To Atrebe's Laboratory.", "KylongToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "KylongToBathezid")
		AddConversationOption(con, "To Bellywumper Burrows.", "KylongToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "KylongToDragon")
	    AddConversationOption(con, "To Drogan Exiles.", "KylongToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "KylongToEast")
		AddConversationOption(con, "To Omen's Call.", "KylongToOmen")
		AddConversationOption(con, "To Riliss.", "KylongToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "KylongToCab")
		AddConversationOption(con, "To Sathir's Span.", "KylongToSpan")
		AddConversationOption(con, "To Western Pens.", "KylongToWest")
	elseif GetSpawnLocationID(NPC) == 259320 then
		--Ruins of Cabilis-
		AddConversationOption(con, "To Atrebe's Laboratory.", "CabToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "CabToBathezid")
		AddConversationOption(con, "To Bellywumper Burrows.", "CabToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "CabToDragon")
	    AddConversationOption(con, "To Drogan Exiles.", "CabToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "CabToEast")
		AddConversationOption(con, "To Kylong Plains.", "CabToKylong")
		AddConversationOption(con, "To Omen's Call.", "CabToOmen")
		AddConversationOption(con, "To Riliss.", "CabToRil")
		AddConversationOption(con, "To Sathir's Span.", "CabToSpan")
		AddConversationOption(con, "To Western Pens.", "CabToWest")
	elseif GetSpawnLocationID(NPC) == 605980 then
		--Bathezid's Watch--
		AddConversationOption(con, "To Atrebe's Laboratory.", "BathezidToAtrebe")
		AddConversationOption(con, "To Bellywumper Burrows.", "BathezidToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "BathezidToDragon")
	    AddConversationOption(con, "To Drogan Exiles.", "BathezidToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "BathezidToEast")
		AddConversationOption(con, "To Kylong Plains.", "BathezidToKylong")
		AddConversationOption(con, "To Omen's Call.", "BathezidToOmen")
		AddConversationOption(con, "To Riliss.", "BathezidToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "BathezidToCab")
		AddConversationOption(con, "To Sathir's Span.", "BathezidToSpan")
		AddConversationOption(con, "To Western Pens.", "BathezidToWest")
	elseif GetSpawnLocationID(NPC) == 605977 then
		---Western Pens--
		AddConversationOption(con, "To Atrebe's Laboratory.", "WestToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "WestToBathezid")
		AddConversationOption(con, "To Bellywumper Burrows.", "WestToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "WestToDragon")
	    AddConversationOption(con, "To Drogan Exiles.", "WestToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "WestToEast")
		AddConversationOption(con, "To Kylong Plains.", "WestToKylong")
		AddConversationOption(con, "To Omen's Call.", "WestToOmen")
		AddConversationOption(con, "To Riliss.", "WestToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "WestToCab")
		AddConversationOption(con, "To Sathir's Span.", "WestToSpan")
	elseif GetSpawnLocationID(NPC) == 259321 then
		---Sathir's Span--
		AddConversationOption(con, "To Atrebe's Laboratory.", "SpanToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "SpawnToBathezid")
		AddConversationOption(con, "To Bellywumper Burrows.", "SpanToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "SpanToDragon")
	    AddConversationOption(con, "To Drogan Exiles.", "SpanToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "SpanToEast")
		AddConversationOption(con, "To Kylong Plains.", "SpanToKylong")
		AddConversationOption(con, "To Omen's Call.", "SpanToOmen")
		AddConversationOption(con, "To Riliss.", "SpanToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "SpanToCab")
		AddConversationOption(con, "To Western Pens.", "SpanToWest")
	elseif GetSpawnLocationID(NPC) == 259317 then
		---Eastern Pens--
		AddConversationOption(con, "To Atrebe's Laboratory.", "EastToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "EastToBathezid")
		AddConversationOption(con, "To Bellywumper Burrows.", "EastToBurrow")
	    AddConversationOption(con, "To Dragon's Rest.", "EastToDragon")
	    AddConversationOption(con, "To Drogan Exiles.", "EastToDrogan")
		AddConversationOption(con, "To Kylong Plains.", "EastToKylong")
		AddConversationOption(con, "To Omen's Call.", "EastToOmen")
		AddConversationOption(con, "To Riliss.", "EastToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "EastToCab")
		AddConversationOption(con, "To Sathir's Span.", "EastToSpan")
		AddConversationOption(con, "To Western Pens.", "EastToWest")
	elseif GetSpawnLocationID(NPC) == 259315 then
		---Dragon's Rest--
		AddConversationOption(con, "To Atrebe's Laboratory.", "DragonToAtrebe")
		AddConversationOption(con, "To Bathezid's Watch.", "DragonToBathezid")
		AddConversationOption(con, "To Bellywumper Burrows.", "DragonToBurrow")
	    AddConversationOption(con, "To Drogan Exiles.", "DragonToDrogan")
		AddConversationOption(con, "To Eastern Pens.", "DragonToEast")
		AddConversationOption(con, "To Kylong Plains.", "DragonToKylong")
		AddConversationOption(con, "To Omen's Call.", "DragonToOmen")
		AddConversationOption(con, "To Riliss.", "DragonToRil")
		AddConversationOption(con, "To Ruins of Cabilis.", "DragonToCab")
		AddConversationOption(con, "To Sathir's Span.", "DragonToSpan")
		AddConversationOption(con, "To Western Pens.", "DragonToWest")
	else
		PlayFlavor(NPC, "", "Not implemented yet!", "cry", 0, 0, Spawn)
	end
	AddConversationOption(con, "Nowhere.")
	StartConversation(con, NPC, Spawn, "Where to?")
end

function RilToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 452)
	SetMount(Spawn, 7253)
end

function RilToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 451)
	SetMount(Spawn, 7253)
end

function RilToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 401)
	SetMount(Spawn, 7253)
end

function RilToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 449)
	SetMount(Spawn, 7253)
end

function RilToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 448)
	SetMount(Spawn, 7253)
end

function RilToEast(NPC, Spawn)
	StartAutoMount(Spawn, 450)
	SetMount(Spawn, 7253)
end

function RilToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 399)
	SetMount(Spawn, 7253)
end

function RilToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 447)
	SetMount(Spawn, 7253)
end

function RilToCab(NPC, Spawn)
	StartAutoMount(Spawn, 400)
	SetMount(Spawn, 7253)
end

function RilToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 453)
	SetMount(Spawn, 7253)
end

function RilToWest(NPC, Spawn)
	StartAutoMount(Spawn, 402)
	SetMount(Spawn, 7253)
end

function OmenToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 412)
	SetMount(Spawn, 7253)
end

function OmenToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 405)
	SetMount(Spawn, 7253)
end

function OmenToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 457)
	SetMount(Spawn, 7253)
end

function OmenToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 456)
	SetMount(Spawn, 7253)
end

function OmenToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 406)
	SetMount(Spawn, 7253)
end

function OmenToEast(NPC, Spawn)
	StartAutoMount(Spawn, 455)
	SetMount(Spawn, 7253)
end

function OmenToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 454)
	SetMount(Spawn, 7253)
end

function OmenToRil(NPC, Spawn)
	StartAutoMount(Spawn, 459)
	SetMount(Spawn, 7253)
end

function OmenToCab(NPC, Spawn)
	StartAutoMount(Spawn, 460)
	SetMount(Spawn, 7253)
end

function OmenToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 403)
	SetMount(Spawn,7253)
end

function OmenToWest(NPC, Spawn)
	StartAutoMount(Spawn, 458)
	SetMount(Spawn, 7253)
end

function AtrebeToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 476)
	SetMount(Spawn, 7253)
end

function AtrebeToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 474)
	SetMount(Spawn, 7253)
end

function AtrebeToDragan(NPC, Spawn)
	StartAutoMount(Spawn, 473)
	SetMount(Spawn, 7253)
end

function AtrebeToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 472)
	SetMount(Spawn, 7253)
end

function AtrebeToEast(NPC, Spawn)
	StartAutoMount(Spawn, 470)
	SetMount(Spawn, 7253)
end

function AtrebeToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 469)
	SetMount(Spawn, 7253)
end

function AtrebeToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 407)
	SetMount(Spawn, 7253)
end

function AtrebeToRil(NPC, Spawn)
	StartAutoMount(Spawn, 471)
	SetMount(Spawn, 7253)
end

function AtrebeToCab(NPC, Spawn)
	StartAutoMount(Spawn, 478)
	SetMount(Spawn, 7253)
end

function AtrebeToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 477)
	SetMount(Spawn, 7253)
end

function AtrebeToWest(NPC, Spawn)
	StartAutoMount(Spawn, 475)
	SetMount(Spawn, 7253)
end

function BurrowToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 524)
	SetMount(Spawn, 7253)
end

function BurrowToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 523)
	SetMount(Spawn, 7253)
end

function BurrowToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 410)
	SetMount(Spawn, 7253)
end

function BurrowToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 408)
	SetMount(Spawn, 7253)
end

function BurrowToEast(NPC, Spawn)
	StartAutoMount(Spawn, 520)
	SetMount(Spawn, 7253)
end

function BurrowToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 518)
	SetMount(Spawn, 7253)
end

function BurrowToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 521)
	SetMount(Spawn, 7253)
end

function BurrowToRil(NPC, Spawn)
	StartAutoMount(Spawn, 413)
	SetMount(Spawn, 7253)
end

function BurrowToCab(NPC, Spawn)
	StartAutoMount(Spawn, 525)
	SetMount(Spawn, 7253)
end

function BurrowToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 519)
	SetMount(Spawn, 7253)
end

function BurrowToWest(NPC, Spawn)
	StartAutoMount(Spawn, 522)
	SetMount(Spawn, 7253)
end

function DroganToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 496)
	SetMount(Spawn, 7253)
end

function DroganToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 495)
	SetMount(Spawn, 7253)
end

function DroganToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 415)
	SetMount(Spawn, 7253)
end

function DroganToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 493)
	SetMount(Spawn, 7253)
end

function DroganToEast(NPC, Spawn)
	StartAutoMount(Spawn, 492)
	SetMount(Spawn, 7253)
end

function DroganToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 489)
	SetMount(Spawn, 7253)
end

function DroganToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 409)
	SetMount(Spawn, 7253)
end

function DroganToRil(NPC, Spawn)
	StartAutoMount(Spawn, 490)
	SetMount(Spawn, 7253)
end

function DroganToCab(NPC, Spawn)
	StartAutoMount(Spawn, 497)
	SetMount(Spawn, 7253)
end

function DroganToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 491)
	SetMount(Spawn, 7253)
end

function DroganToWest(NPC, Spawn)
	StartAutoMount(Spawn, 494)
	SetMount(Spawn, 7253)
end

function KylongToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 467)
	SetMount(Spawn, 7253)
end

function KylongToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 414)
	SetMount(Spawn, 7253)
end

function KylongToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 465)
	SetMount(Spawn, 7253)
end

function KylongToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 464)
	SetMount(Spawn, 7253)
end

function KylongToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 463)
	SetMount(Spawn, 7253)
end

function KylongToEast(NPC, Spawn)
	StartAutoMount(Spawn, 461)
	SetMount(Spawn, 7253)
end

function KylongToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 462)
	SetMount(Spawn, 7253)
end

function KylongToRil(NPC, Spawn)
	StartAutoMount(Spawn, 419)
	SetMount(Spawn, 7253)
end

function KylongToCab(NPC, Spawn)
	StartAutoMount(Spawn, 468)
	SetMount(Spawn, 7253)
end

function KylongToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 416)
	SetMount(Spawn, 7253)
end

function KylongToWest(NPC, Spawn)
	StartAutoMount(Spawn, 466)
	SetMount(Spawn, 7253)
end

function CabToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 516)
	SetMount(Spawn, 7253)
end

function CabToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 515)
	SetMount(Spawn, 7253)
end

function CabToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 513)
	SetMount(Spawn, 7253)
end

function CabToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 512)
	SetMount(Spawn, 7253)
end

function CabToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 511)
	SetMount(Spawn, 7253)
end

function CabToEast(NPC, Spawn)
	StartAutoMount(Spawn, 517)
	SetMount(Spawn, 7253)
end

function CabToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 508)
	SetMount(Spawn, 7253)
end

function CabToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 510)
	SetMount(Spawn, 7253)
end

function CabToRil(NPC, Spawn)
	StartAutoMount(Spawn, 418)
	SetMount(Spawn, 7253)
end

function CabToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 509)
	SetMount(Spawn, 7253)
end

function CabToWest(NPC, Spawn)
	StartAutoMount(Spawn, 514)
	SetMount(Spawn, 7253)
end

function BathezidToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 533)
	SetMount(Spawn, 7253)
end

function BathezidToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 530)
	SetMount(Spawn, 7253)
end

function BathezidToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 529)
	SetMount(Spawn, 7253)
end

function BathezidToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 528)
	SetMount(Spawn, 7253)
end

function BathezidToEast(NPC, Spawn)
	StartAutoMount(Spawn, 526)
	SetMount(Spawn, 7253)
end

function BathezidToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 420)
	SetMount(Spawn, 7253)
end

function BathezidToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 421)
	SetMount(Spawn, 7253)
end

function BathezidToRil(NPC, Spawn)
	StartAutoMount(Spawn, 527)
	SetMount(Spawn, 7253)
end

function BathezidToCab(NPC, Spawn)
	StartAutoMount(Spawn, 534)
	SetMount(Spawn, 7253)
end

function BathezidToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 532)
	SetMount(Spawn, 7253)
end

function BathezidToWest(NPC, Spawn)
	StartAutoMount(Spawn, 531)
	SetMount(Spawn, 7253)
end

function WestToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 437)
	SetMount(Spawn, 7253)
end

function WestToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 436)
	SetMount(Spawn, 7253)
end

function WestToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 435)
	SetMount(Spawn, 7253)
end

function WestToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 434)
	SetMount(Spawn, 7253)
end

function WestToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 433)
	SetMount(Spawn, 7253)
end

function WestToEast(NPC, Spawn)
	StartAutoMount(Spawn, 426)
	SetMount(Spawn, 7253)
end

function WestToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 431)
	SetMount(Spawn, 7253)
end

function WestToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 432)
	SetMount(Spawn, 7253)
end

function WestToRil(NPC, Spawn)
	StartAutoMount(Spawn, 428)
	SetMount(Spawn, 7253)
end

function WestToCab(NPC, Spawn)
	StartAutoMount(Spawn, 438)
	SetMount(Spawn, 7253)
end

function WestToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 429)
	SetMount(Spawn, 7253)
end

function SpanToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 443)
	SetMount(Spawn, 7253)
end

function SpanToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 442)
	SetMount(Spawn, 7253)
end

function SpanToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 441)
	SetMount(Spawn, 7253)
end

function SpanToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 440)
	SetMount(Spawn, 7253)
end

function SpanToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 439)
	SetMount(Spawn, 7253)
end

function SpanToEast(NPC, Spawn)
	StartAutoMount(Spawn, 445)
	SetMount(Spawn, 7253)
end

function SpanToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 425)
	SetMount(Spawn, 7253)
end

function SpanToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 423)
	SetMount(Spawn, 7253)
end

function SpanToRil(NPC, Spawn)
	StartAutoMount(Spawn, 446)
	SetMount(Spawn, 7253)
end

function SpanToCab(NPC, Spawn)
	StartAutoMount(Spawn, 444)
	SetMount(Spawn, 7253)
end

function SpanToWest(NPC, Spawn)
	StartAutoMount(Spawn, 424)
	SetMount(Spawn, 7253)
end

function EastToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 487)
	SetMount(Spawn, 7253)
end

function EastToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 486)
	SetMount(Spawn, 7253)
end

function EastToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 485)
	SetMount(Spawn, 7253)
end

function EastToDragon(NPC, Spawn)
	StartAutoMount(Spawn, 484)
	SetMount(Spawn, 7253)
end

function EastToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 483)
	SetMount(Spawn, 7253)
end

function EastToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 479)
	SetMount(Spawn, 7253)
end

function EastToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 482)
	SetMount(Spawn, 7253)
end

function EastToRil(NPC, Spawn)
	StartAutoMount(Spawn, 480)
	SetMount(Spawn, 7253)
end

function EastToCab(NPC, Spawn)
	StartAutoMount(Spawn, 488)
	SetMount(Spawn, 7253)
end

function EastToWest(NPC, Spawn)
	StartAutoMount(Spawn, 430)
	SetMount(Spawn, 7253)
end

function DragonToAtrebe(NPC, Spawn)
	StartAutoMount(Spawn, 505)
	SetMount(Spawn, 7253)
end

function DragonToBathezid(NPC, Spawn)
	StartAutoMount(Spawn, 507)
	SetMount(Spawn, 7253)
end

function DragonToBurrow(NPC, Spawn)
	StartAutoMount(Spawn, 427)
	SetMount(Spawn, 7253)
end

function DragonToDrogan(NPC, Spawn)
	StartAutoMount(Spawn, 502)
	SetMount(Spawn, 7253)
end

function DragonToEast(NPC, Spawn)
	StartAutoMount(Spawn, 500)
	SetMount(Spawn, 7253)
end

function DragonToKylong(NPC, Spawn)
	StartAutoMount(Spawn, 498)
	SetMount(Spawn, 7253)
end

function DragonToOmen(NPC, Spawn)
	StartAutoMount(Spawn, 501)
	SetMount(Spawn, 7253)
end

function DragonToRil(NPC, Spawn)
	StartAutoMount(Spawn, 499)
	SetMount(Spawn, 7253)
end

function DragonToCab(NPC, Spawn)
	StartAutoMount(Spawn, 506)
	SetMount(Spawn, 7253)
end

function DragonToSpan(NPC, Spawn)
	StartAutoMount(Spawn, 503)
	SetMount(Spawn, 7253)
end

function DragonToWest(NPC, Spawn)
	StartAutoMount(Spawn, 504)
	SetMount(Spawn, 7253)
end
