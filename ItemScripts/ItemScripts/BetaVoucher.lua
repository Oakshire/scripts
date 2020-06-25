
function used(Item, Player)
    local wantedZone = "antonica"
    if wantedZone == GetZone(Player) then
        Zone("GMHall", Player, 666.88, -35.90, 0, 225)
    else 
        SendPopUpMessage(Player, "You must be in Antonica to use this item.", 255, 255, 255)
    end
end

function examined(Item, Player)
    AddTimer(Item, 10000, "return_home", 1, Player)
end

function return_home(Item, Player)
    Gate(Player)
end