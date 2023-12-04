import { PlayerClass } from "./Classes";

enum TierVendors {
    VENDOR_TIER1_WARRIOR = 110000,
    VENDOR_TIER1_PALADIN = 120000,
    VENDOR_TIER1_HUNTER = 130000,
    VENDOR_TIER1_ROGUE = 140000,
    VENDOR_TIER1_PRIEST = 150000,
    VENDOR_TIER1_SHAMAN = 170000,
    VENDOR_TIER1_MAGE = 180000,
    VENDOR_TIER1_WARLOCK = 190000,
    VENDOR_TIER1_DRUID = 111000,
    VENDOR_TIER1_ITEMS = 112000
}

export const GENERIC_ITEMS = TierVendors.VENDOR_TIER1_ITEMS;

export const TIER_CLASS_VENDORS: { [id: number]: number } = {
    [PlayerClass.CLASS_WARRIOR]: TierVendors.VENDOR_TIER1_WARRIOR,
    [PlayerClass.CLASS_PALADIN]: TierVendors.VENDOR_TIER1_PALADIN,
    [PlayerClass.CLASS_HUNTER]: TierVendors.VENDOR_TIER1_HUNTER,
    [PlayerClass.CLASS_ROGUE]: TierVendors.VENDOR_TIER1_ROGUE,
    [PlayerClass.CLASS_PRIEST]: TierVendors.VENDOR_TIER1_PRIEST,
    [PlayerClass.CLASS_SHAMAN]: TierVendors.VENDOR_TIER1_SHAMAN,
    [PlayerClass.CLASS_MAGE]: TierVendors.VENDOR_TIER1_MAGE,
    [PlayerClass.CLASS_WARLOCK]: TierVendors.VENDOR_TIER1_WARLOCK,
    [PlayerClass.CLASS_DRUID]: TierVendors.VENDOR_TIER1_DRUID
}