-- Make archer/crossbow/etc... much weaker
UPDATE Units
	SET Combat = Combat - 10, RangedCombat = RangedCombat - 10
	WHERE PromotionClass = "PROMOTION_CLASS_RANGED" AND Range = 2;

-- Make machine gun/saka horse arher/etc... a little weaker
UPDATE Units
	SET Combat = Combat - 5, RangedCombat = RangedCombat - 5
	WHERE PromotionClass = "PROMOTION_CLASS_RANGED" AND Range = 1;

-- Make catapult/bombard/etc... much weaker
UPDATE Units
	SET Combat = Combat - 10, Bombard = Bombard - 10
	WHERE PromotionClass = "PROMOTION_CLASS_SIEGE" AND Range = 2;

-- Let military engineer act as battering ram
INSERT INTO TypeTags(Type, Tag)
	VALUES ("UNIT_MILITARY_ENGINEER", "CLASS_BATTERING_RAM");

-- Gives Military Engineers 4 rather than two charges (now actually useful)
UPDATE	Units
	SET buildcharges = 4
	WHERE UnitType = "UNIT_MILITARY_ENGINEER";

-- Fix Slinger and Horse Archer
UPDATE Units
SET Combat = Combat + 5, RangedCombat = RangedCombat + 5
WHERE (UnitType = "UNIT_SLINGER" OR UnitType = "UNIT_BARBARIAN_HORSE_ARCHER");