require("tierVendorGossipEvents")

TierVendor = {}
TierVendor.__index = TierVendor

function TierVendor.new(entry, itemVendor, classVendors)
    local instance = setmetatable({}, TierVendor)
    instance.entry = entry
    instance.itemVendor = itemVendor
    instance.classVendors = classVendors
    return instance
end


function TierVendor:GetClassVendorEntry(player)
    local playerClass = player:GetClass();
    local vendorId = self.classVendors[playerClass]

    return vendorId
end

function TierVendor:ShowGenericItems(player, creature)
    player:SendListInventory(creature, self.itemVendor)
end

function TierVendor:ShowClassItems(player, creature)
    local classVendorId = self:GetClassVendorEntry(player)
    player:SendListInventory(creature, classVendorId)
end

function TierVendor:GetEntry()
    return self.entry
end

function TierVendor.GossipOnHello(event, player, creature)
    player:GossipClearMenu()

    if(player:GetClass() ~= CLASS_DEATHKNIGHT) then
        player:GossipMenuAddItem(1, "Buy Class Set", 1, SHOW_CLASS_SET)
    end

    player:GossipMenuAddItem(1, "Buy Raid Items", 1, SHOW_GENERIC_ITEMS)

    player:GossipMenuAddItem(1, "Close", 1, CLOSE_GOSSIP)
    player:GossipSendMenu(1, creature, 1)
end

function TierVendor:GossipOnSelect(event, player, creature, sender, intId, code, menuId)
    local creatureId = self.entry
    
    if(intId == SHOW_CLASS_SET) then
        self:ShowClassItems(player, creature)

    elseif (intId == SHOW_GENERIC_ITEMS) then
        self:ShowGenericItems(player, creature)

    elseif(intId == CLOSE_GOSSIP) then
        player:GossipComplete()
    end
end

-- Necessary to work with the AC Eluna event for registering Gossip, but also keeping the object intact
function TierVendor.GossipOnSelectLambda(tierVendor)
    return function(event, player, creature, sender, intId, code, menuId)
        tierVendor:GossipOnSelect(event, player, creature, sender, intId, code, menuId)
    end
end