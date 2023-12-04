
local ____modules = {}
local ____moduleCache = {}
local ____originalRequire = require
local function require(file, ...)
    if ____moduleCache[file] then
        return ____moduleCache[file].value
    end
    if ____modules[file] then
        local module = ____modules[file]
        ____moduleCache[file] = { value = (select("#", ...) > 0) and module(...) or module(file) }
        return ____moduleCache[file].value
    else
        if ____originalRequire then
            return ____originalRequire(file)
        else
            error("module '" .. file .. "' not found")
        end
    end
end
____modules = {
["Classes"] = function(...) 
local ____exports = {}
____exports.PlayerClass = PlayerClass or ({})
____exports.PlayerClass.CLASS_WARRIOR = 1
____exports.PlayerClass[____exports.PlayerClass.CLASS_WARRIOR] = "CLASS_WARRIOR"
____exports.PlayerClass.CLASS_PALADIN = 2
____exports.PlayerClass[____exports.PlayerClass.CLASS_PALADIN] = "CLASS_PALADIN"
____exports.PlayerClass.CLASS_HUNTER = 3
____exports.PlayerClass[____exports.PlayerClass.CLASS_HUNTER] = "CLASS_HUNTER"
____exports.PlayerClass.CLASS_ROGUE = 4
____exports.PlayerClass[____exports.PlayerClass.CLASS_ROGUE] = "CLASS_ROGUE"
____exports.PlayerClass.CLASS_PRIEST = 5
____exports.PlayerClass[____exports.PlayerClass.CLASS_PRIEST] = "CLASS_PRIEST"
____exports.PlayerClass.CLASS_DEATHKNIGHT = 6
____exports.PlayerClass[____exports.PlayerClass.CLASS_DEATHKNIGHT] = "CLASS_DEATHKNIGHT"
____exports.PlayerClass.CLASS_SHAMAN = 7
____exports.PlayerClass[____exports.PlayerClass.CLASS_SHAMAN] = "CLASS_SHAMAN"
____exports.PlayerClass.CLASS_MAGE = 8
____exports.PlayerClass[____exports.PlayerClass.CLASS_MAGE] = "CLASS_MAGE"
____exports.PlayerClass.CLASS_WARLOCK = 9
____exports.PlayerClass[____exports.PlayerClass.CLASS_WARLOCK] = "CLASS_WARLOCK"
____exports.PlayerClass.CLASS_DRUID = 11
____exports.PlayerClass[____exports.PlayerClass.CLASS_DRUID] = "CLASS_DRUID"
return ____exports
 end,
["Tier1Vendors"] = function(...) 
local ____exports = {}
local ____Classes = require("Classes")
local PlayerClass = ____Classes.PlayerClass
local TierVendors = TierVendors or ({})
TierVendors.VENDOR_TIER1_WARRIOR = 110000
TierVendors[TierVendors.VENDOR_TIER1_WARRIOR] = "VENDOR_TIER1_WARRIOR"
TierVendors.VENDOR_TIER1_PALADIN = 120000
TierVendors[TierVendors.VENDOR_TIER1_PALADIN] = "VENDOR_TIER1_PALADIN"
TierVendors.VENDOR_TIER1_HUNTER = 130000
TierVendors[TierVendors.VENDOR_TIER1_HUNTER] = "VENDOR_TIER1_HUNTER"
TierVendors.VENDOR_TIER1_ROGUE = 140000
TierVendors[TierVendors.VENDOR_TIER1_ROGUE] = "VENDOR_TIER1_ROGUE"
TierVendors.VENDOR_TIER1_PRIEST = 150000
TierVendors[TierVendors.VENDOR_TIER1_PRIEST] = "VENDOR_TIER1_PRIEST"
TierVendors.VENDOR_TIER1_SHAMAN = 170000
TierVendors[TierVendors.VENDOR_TIER1_SHAMAN] = "VENDOR_TIER1_SHAMAN"
TierVendors.VENDOR_TIER1_MAGE = 180000
TierVendors[TierVendors.VENDOR_TIER1_MAGE] = "VENDOR_TIER1_MAGE"
TierVendors.VENDOR_TIER1_WARLOCK = 190000
TierVendors[TierVendors.VENDOR_TIER1_WARLOCK] = "VENDOR_TIER1_WARLOCK"
TierVendors.VENDOR_TIER1_DRUID = 111000
TierVendors[TierVendors.VENDOR_TIER1_DRUID] = "VENDOR_TIER1_DRUID"
TierVendors.VENDOR_TIER1_ITEMS = 112000
TierVendors[TierVendors.VENDOR_TIER1_ITEMS] = "VENDOR_TIER1_ITEMS"
____exports.GENERIC_ITEMS = TierVendors.VENDOR_TIER1_ITEMS
____exports.TIER_CLASS_VENDORS = {
    [PlayerClass.CLASS_WARRIOR] = TierVendors.VENDOR_TIER1_WARRIOR,
    [PlayerClass.CLASS_PALADIN] = TierVendors.VENDOR_TIER1_PALADIN,
    [PlayerClass.CLASS_HUNTER] = TierVendors.VENDOR_TIER1_HUNTER,
    [PlayerClass.CLASS_ROGUE] = TierVendors.VENDOR_TIER1_ROGUE,
    [PlayerClass.CLASS_PRIEST] = TierVendors.VENDOR_TIER1_PRIEST,
    [PlayerClass.CLASS_SHAMAN] = TierVendors.VENDOR_TIER1_SHAMAN,
    [PlayerClass.CLASS_MAGE] = TierVendors.VENDOR_TIER1_MAGE,
    [PlayerClass.CLASS_WARLOCK] = TierVendors.VENDOR_TIER1_WARLOCK,
    [PlayerClass.CLASS_DRUID] = TierVendors.VENDOR_TIER1_DRUID
}
return ____exports
 end,
["Tier2Vendors"] = function(...) 
local ____exports = {}
local ____Classes = require("Classes")
local PlayerClass = ____Classes.PlayerClass
local TierVendors = TierVendors or ({})
TierVendors.VENDOR_TIER2_WARRIOR = 210000
TierVendors[TierVendors.VENDOR_TIER2_WARRIOR] = "VENDOR_TIER2_WARRIOR"
TierVendors.VENDOR_TIER2_PALADIN = 220000
TierVendors[TierVendors.VENDOR_TIER2_PALADIN] = "VENDOR_TIER2_PALADIN"
TierVendors.VENDOR_TIER2_HUNTER = 230000
TierVendors[TierVendors.VENDOR_TIER2_HUNTER] = "VENDOR_TIER2_HUNTER"
TierVendors.VENDOR_TIER2_ROGUE = 240000
TierVendors[TierVendors.VENDOR_TIER2_ROGUE] = "VENDOR_TIER2_ROGUE"
TierVendors.VENDOR_TIER2_PRIEST = 250000
TierVendors[TierVendors.VENDOR_TIER2_PRIEST] = "VENDOR_TIER2_PRIEST"
TierVendors.VENDOR_TIER2_SHAMAN = 270000
TierVendors[TierVendors.VENDOR_TIER2_SHAMAN] = "VENDOR_TIER2_SHAMAN"
TierVendors.VENDOR_TIER2_MAGE = 280000
TierVendors[TierVendors.VENDOR_TIER2_MAGE] = "VENDOR_TIER2_MAGE"
TierVendors.VENDOR_TIER2_WARLOCK = 290000
TierVendors[TierVendors.VENDOR_TIER2_WARLOCK] = "VENDOR_TIER2_WARLOCK"
TierVendors.VENDOR_TIER2_DRUID = 211000
TierVendors[TierVendors.VENDOR_TIER2_DRUID] = "VENDOR_TIER2_DRUID"
TierVendors.VENDOR_TIER2_ITEMS = 212000
TierVendors[TierVendors.VENDOR_TIER2_ITEMS] = "VENDOR_TIER2_ITEMS"
____exports.GENERIC_ITEMS = TierVendors.VENDOR_TIER2_ITEMS
____exports.TIER_CLASS_VENDORS = {
    [PlayerClass.CLASS_WARRIOR] = TierVendors.VENDOR_TIER2_WARRIOR,
    [PlayerClass.CLASS_PALADIN] = TierVendors.VENDOR_TIER2_PALADIN,
    [PlayerClass.CLASS_HUNTER] = TierVendors.VENDOR_TIER2_HUNTER,
    [PlayerClass.CLASS_ROGUE] = TierVendors.VENDOR_TIER2_ROGUE,
    [PlayerClass.CLASS_PRIEST] = TierVendors.VENDOR_TIER2_PRIEST,
    [PlayerClass.CLASS_SHAMAN] = TierVendors.VENDOR_TIER2_SHAMAN,
    [PlayerClass.CLASS_MAGE] = TierVendors.VENDOR_TIER2_MAGE,
    [PlayerClass.CLASS_WARLOCK] = TierVendors.VENDOR_TIER2_WARLOCK,
    [PlayerClass.CLASS_DRUID] = TierVendors.VENDOR_TIER2_DRUID
}
return ____exports
 end,
["Tier3Vendors"] = function(...) 
local ____exports = {}
local ____Classes = require("Classes")
local PlayerClass = ____Classes.PlayerClass
local TierVendors = TierVendors or ({})
TierVendors.VENDOR_TIER3_WARRIOR = 310000
TierVendors[TierVendors.VENDOR_TIER3_WARRIOR] = "VENDOR_TIER3_WARRIOR"
TierVendors.VENDOR_TIER3_PALADIN = 320000
TierVendors[TierVendors.VENDOR_TIER3_PALADIN] = "VENDOR_TIER3_PALADIN"
TierVendors.VENDOR_TIER3_HUNTER = 330000
TierVendors[TierVendors.VENDOR_TIER3_HUNTER] = "VENDOR_TIER3_HUNTER"
TierVendors.VENDOR_TIER3_ROGUE = 340000
TierVendors[TierVendors.VENDOR_TIER3_ROGUE] = "VENDOR_TIER3_ROGUE"
TierVendors.VENDOR_TIER3_PRIEST = 350000
TierVendors[TierVendors.VENDOR_TIER3_PRIEST] = "VENDOR_TIER3_PRIEST"
TierVendors.VENDOR_TIER3_SHAMAN = 370000
TierVendors[TierVendors.VENDOR_TIER3_SHAMAN] = "VENDOR_TIER3_SHAMAN"
TierVendors.VENDOR_TIER3_MAGE = 380000
TierVendors[TierVendors.VENDOR_TIER3_MAGE] = "VENDOR_TIER3_MAGE"
TierVendors.VENDOR_TIER3_WARLOCK = 390000
TierVendors[TierVendors.VENDOR_TIER3_WARLOCK] = "VENDOR_TIER3_WARLOCK"
TierVendors.VENDOR_TIER3_DRUID = 311000
TierVendors[TierVendors.VENDOR_TIER3_DRUID] = "VENDOR_TIER3_DRUID"
TierVendors.VENDOR_TIER3_ITEMS = 312000
TierVendors[TierVendors.VENDOR_TIER3_ITEMS] = "VENDOR_TIER3_ITEMS"
____exports.GENERIC_ITEMS = TierVendors.VENDOR_TIER3_ITEMS
____exports.TIER_CLASS_VENDORS = {
    [PlayerClass.CLASS_WARRIOR] = TierVendors.VENDOR_TIER3_WARRIOR,
    [PlayerClass.CLASS_PALADIN] = TierVendors.VENDOR_TIER3_PALADIN,
    [PlayerClass.CLASS_HUNTER] = TierVendors.VENDOR_TIER3_HUNTER,
    [PlayerClass.CLASS_ROGUE] = TierVendors.VENDOR_TIER3_ROGUE,
    [PlayerClass.CLASS_PRIEST] = TierVendors.VENDOR_TIER3_PRIEST,
    [PlayerClass.CLASS_SHAMAN] = TierVendors.VENDOR_TIER3_SHAMAN,
    [PlayerClass.CLASS_MAGE] = TierVendors.VENDOR_TIER3_MAGE,
    [PlayerClass.CLASS_WARLOCK] = TierVendors.VENDOR_TIER3_WARLOCK,
    [PlayerClass.CLASS_DRUID] = TierVendors.VENDOR_TIER3_DRUID
}
return ____exports
 end,
["TierVendorGossipEvents"] = function(...) 
local ____exports = {}
____exports.TierVendorGossipEvent = TierVendorGossipEvent or ({})
____exports.TierVendorGossipEvent.SHOW_CLASS_SET = 1
____exports.TierVendorGossipEvent[____exports.TierVendorGossipEvent.SHOW_CLASS_SET] = "SHOW_CLASS_SET"
____exports.TierVendorGossipEvent.SHOW_GENERIC_ITEMS = 2
____exports.TierVendorGossipEvent[____exports.TierVendorGossipEvent.SHOW_GENERIC_ITEMS] = "SHOW_GENERIC_ITEMS"
____exports.TierVendorGossipEvent.CLOSE_GOSSIP = 999
____exports.TierVendorGossipEvent[____exports.TierVendorGossipEvent.CLOSE_GOSSIP] = "CLOSE_GOSSIP"
return ____exports
 end,
["TierVendor"] = function(...) 
local ____exports = {}
local ____Classes = require("Classes")
local PlayerClass = ____Classes.PlayerClass
local ____TierVendorGossipEvents = require("TierVendorGossipEvents")
local TierVendorGossipEvent = ____TierVendorGossipEvents.TierVendorGossipEvent
____exports.TierVendor = __TS__Class()
local TierVendor = ____exports.TierVendor
TierVendor.name = "TierVendor"
function TierVendor.prototype.____constructor(self, entry, itemVendor, classVendors)
    self.entry = entry
    self.itemVendor = itemVendor
    self.classVendors = classVendors
    self.GetEntry = function() return self.entry end
end
function TierVendor.prototype.GetClassVendorEntry(self, player)
    local playerClass = player:GetClass()
    local vendorId = self.classVendors[playerClass]
    return vendorId
end
function TierVendor.prototype.ShowGenericItems(self, player, creature)
    local anyPlayer = player
    anyPlayer:SendListInventory(creature, self.itemVendor)
end
function TierVendor.prototype.ShowClassItems(self, player, creature)
    local classVendorId = self:GetClassVendorEntry(player)
    local anyPlayer = player
    anyPlayer:SendListInventory(creature, classVendorId)
end
function TierVendor.GossipOnHello(self, player, creature)
    player:GossipClearMenu()
    if player:GetClass() ~= PlayerClass.CLASS_DEATHKNIGHT then
        player:GossipMenuAddItem(1, "Buy Class Set", 1, TierVendorGossipEvent.SHOW_CLASS_SET)
    end
    player:GossipMenuAddItem(1, "Buy Raid Items", 1, TierVendorGossipEvent.SHOW_GENERIC_ITEMS)
    player:GossipMenuAddItem(1, "Close", 1, TierVendorGossipEvent.CLOSE_GOSSIP)
    player:GossipSendMenu(1, creature, 1)
    return true
end
function TierVendor.prototype.GossipOnSelect(self, player, creature, intId)
    repeat
        local ____switch10 = intId
        local ____cond10 = ____switch10 == TierVendorGossipEvent.SHOW_CLASS_SET
        if ____cond10 then
            self:ShowClassItems(player, creature)
            break
        end
        ____cond10 = ____cond10 or ____switch10 == TierVendorGossipEvent.SHOW_GENERIC_ITEMS
        if ____cond10 then
            self:ShowGenericItems(player, creature)
            break
        end
        ____cond10 = ____cond10 or ____switch10 == TierVendorGossipEvent.CLOSE_GOSSIP
        if ____cond10 then
            player:GossipComplete()
            break
        end
    until true
    return true
end
return ____exports
 end,
["mod-tier-vendor"] = function(...) 
local ____exports = {}
local ____Tier1Vendors = require("Tier1Vendors")
local Tier1GenericVendor = ____Tier1Vendors.GENERIC_ITEMS
local Tier1ClassVendors = ____Tier1Vendors.TIER_CLASS_VENDORS
local ____Tier2Vendors = require("Tier2Vendors")
local Tier2GenericVendor = ____Tier2Vendors.GENERIC_ITEMS
local Tier2ClassVendors = ____Tier2Vendors.TIER_CLASS_VENDORS
local ____Tier3Vendors = require("Tier3Vendors")
local Tier3GenericVendor = ____Tier3Vendors.GENERIC_ITEMS
local Tier3ClassVendors = ____Tier3Vendors.TIER_CLASS_VENDORS
local ____TierVendor = require("TierVendor")
local TierVendor = ____TierVendor.TierVendor
local NPC_TIER1 = 200000
local NPC_TIER2 = 200001
local NPC_TIER3 = 200002
local Tier1Vendor = __TS__New(TierVendor, NPC_TIER1, Tier1GenericVendor, Tier1ClassVendors)
local Tier2Vendor = __TS__New(TierVendor, NPC_TIER2, Tier2GenericVendor, Tier2ClassVendors)
local Tier3Vendor = __TS__New(TierVendor, NPC_TIER3, Tier3GenericVendor, Tier3ClassVendors)
local function GMLogin(____, player)
    if player:GetGMRank() > 1 then
        SendWorldMessage(nil, "|CFFFF0303[mod-tier-vendors]|r is loaded")
        SendWorldMessage(
            nil,
            "Add Tier1 Vendor with: .npc add " .. tostring(NPC_TIER1)
        )
        SendWorldMessage(
            nil,
            "Add Tier2 Vendor with: .npc add " .. tostring(NPC_TIER2)
        )
        SendWorldMessage(
            nil,
            "Add Tier3 Vendor with: .npc add " .. tostring(NPC_TIER3)
        )
    end
end
RegisterCreatureGossipEvent(
    Tier1Vendor:GetEntry(),
    1,
    function(_, player, creature) return TierVendor:GossipOnHello(player, creature) end
)
RegisterCreatureGossipEvent(
    Tier1Vendor:GetEntry(),
    2,
    function(_, player, creature, __, intId, ___, ____) return Tier1Vendor:GossipOnSelect(player, creature, intId) end
)
RegisterCreatureGossipEvent(
    Tier2Vendor:GetEntry(),
    1,
    function(_, player, creature) return TierVendor:GossipOnHello(player, creature) end
)
RegisterCreatureGossipEvent(
    Tier2Vendor:GetEntry(),
    2,
    function(_, player, creature, __, intId, ___, ____) return Tier2Vendor:GossipOnSelect(player, creature, intId) end
)
RegisterCreatureGossipEvent(
    Tier3Vendor:GetEntry(),
    1,
    function(_, player, creature) return TierVendor:GossipOnHello(player, creature) end
)
RegisterCreatureGossipEvent(
    Tier3Vendor:GetEntry(),
    2,
    function(_, player, creature, __, intId, ___, ____) return Tier3Vendor:GossipOnSelect(player, creature, intId) end
)
RegisterPlayerEvent(
    3,
    function(_, player) return GMLogin(nil, player) end
)
print("[mod-tier-vendors]: Loaded")
return ____exports
 end,
["index"] = function(...) 
local ____exports = {}
require("mod-tier-vendor")
return ____exports
 end,
}
return require("index", ...)
