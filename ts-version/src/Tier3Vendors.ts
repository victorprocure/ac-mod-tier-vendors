import { PlayerClass } from "./Classes";

enum TierVendors {
    VENDOR_TIER3_WARRIOR = 310000,
    VENDOR_TIER3_PALADIN = 320000,
    VENDOR_TIER3_HUNTER = 330000,
    VENDOR_TIER3_ROGUE = 340000,
    VENDOR_TIER3_PRIEST = 350000,
    VENDOR_TIER3_SHAMAN = 370000,
    VENDOR_TIER3_MAGE = 380000,
    VENDOR_TIER3_WARLOCK = 390000,
    VENDOR_TIER3_DRUID = 311000,
    VENDOR_TIER3_ITEMS = 312000
}

export const GENERIC_ITEMS = TierVendors.VENDOR_TIER3_ITEMS;

export const TIER_CLASS_VENDORS: { [id: number]: number } = {
    [PlayerClass.CLASS_WARRIOR]: TierVendors.VENDOR_TIER3_WARRIOR,
    [PlayerClass.CLASS_PALADIN]: TierVendors.VENDOR_TIER3_PALADIN,
    [PlayerClass.CLASS_HUNTER]: TierVendors.VENDOR_TIER3_HUNTER,
    [PlayerClass.CLASS_ROGUE]: TierVendors.VENDOR_TIER3_ROGUE,
    [PlayerClass.CLASS_PRIEST]: TierVendors.VENDOR_TIER3_PRIEST,
    [PlayerClass.CLASS_SHAMAN]: TierVendors.VENDOR_TIER3_SHAMAN,
    [PlayerClass.CLASS_MAGE]: TierVendors.VENDOR_TIER3_MAGE,
    [PlayerClass.CLASS_WARLOCK]: TierVendors.VENDOR_TIER3_WARLOCK,
    [PlayerClass.CLASS_DRUID]: TierVendors.VENDOR_TIER3_DRUID
}